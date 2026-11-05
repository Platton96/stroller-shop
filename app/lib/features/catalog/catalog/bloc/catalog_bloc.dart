import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/catalog/catalog/mappers/catalog_vm_mapper.dart';
import 'package:stroller_shop/features/catalog/catalog/models/catalog_data.dart';
import 'package:stroller_shop/features/catalog/catalog/models/catalog_vm.dart';
import 'package:stroller_shop/features/catalog/catalog_pages.dart';
import 'package:stroller_shop/features/stroller_details/stroller_details_pages.dart';
import 'package:stroller_shop/features/tabs/mediators/open_tab_mediator.dart';
import 'package:stroller_shop/l10n/app_strings.dart';
import 'package:stroller_shop/repositories/cart_repository.dart';
import 'package:stroller_shop/repositories/catalog_repository.dart';
import 'package:stroller_shop/repositories/shop_repository.dart';

part 'catalog_bloc.freezed.dart';
part 'catalog_event.dart';
part 'catalog_state.dart';

@injectable
class CatalogBloc extends BaseBloc<CatalogEvent, CatalogState> {
  CatalogBloc(
    this._catalogRepository,
    this._shopRepository,
    this._cartRepository,
    this._mapper,
    this._openTabMediator,
  ) : super(.initial(data: _mapper.toCatalogVM(CatalogData.initial()))) {
    addDisposable(_cartRepository.watchCount().listen(_handleCartCount));
    on<_QueryChangedEvent>(
      (event, emit) => _handleQueryChangedEvent(emit, event),
      transformer: debounceRestartable(),
    );
    on<_LoadMoreEvent>(
      (event, emit) => _handleLoadMoreEvent(emit, event),
      transformer: throttleDroppable(),
    );
    on<CatalogEvent>(
      (event, emit) => switch (event) {
        _InitEvent() => _handleInitEvent(emit, event),
        _RetryPressedEvent() => _handleRetryPressedEvent(emit, event),
        _TypeSelectedEvent() => _handleTypeSelectedEvent(emit, event),
        _SortPressedEvent() => _handleSortPressedEvent(emit, event),
        _StrollerPressedEvent() => _handleStrollerPressedEvent(emit, event),
        _AddToCartPressedEvent() => _handleAddToCartPressedEvent(emit, event),
        _AssistantPressedEvent() => _handleAssistantPressedEvent(emit, event),
        _CartPressedEvent() => _handleCartPressedEvent(emit, event),
        _CartCountChangedEvent() => _handleCartCountChangedEvent(emit, event),
        _QueryChangedEvent() || _LoadMoreEvent() => null,
      },
    );
  }

  static const _pageSize = 20;

  final CatalogRepository _catalogRepository;
  final ShopRepository _shopRepository;
  final CartRepository _cartRepository;
  final CatalogVMMapper _mapper;
  final OpenTabMediator _openTabMediator;

  var _data = CatalogData.initial();

  @override
  void handleGeneralException(
    CatalogEvent event,
    Emitter<CatalogState> emit,
    Exception exception,
  ) => emit(.error(data: state.data, exception: exception));

  Future<void> _handleInitEvent(Emitter<CatalogState> emit, _InitEvent event) async {
    emit(.loading(data: state.data));
    final typesFuture = _catalogRepository.fetchTypes();
    final shopFuture = _shopRepository.fetchShop();
    final pageFuture = _fetchPage(offset: 0);
    await Future.wait([typesFuture, shopFuture, pageFuture]);
    final types = await typesFuture;
    final shop = await shopFuture;
    final page = await pageFuture;
    _data = _data.copyWith(
      types: types,
      city: shop.city,
      strollers: page.items,
      total: page.total,
    );
    _emitLoaded(emit);
  }

  Future<void> _handleRetryPressedEvent(Emitter<CatalogState> emit, _RetryPressedEvent event) =>
      _handleInitEvent(emit, const _InitEvent());

  Future<void> _handleQueryChangedEvent(Emitter<CatalogState> emit, _QueryChangedEvent event) {
    final query = event.query.trim();
    if (query == _data.filter.query) {
      return Future.value();
    }

    return _reload(emit, _data.filter.copyWith(query: query));
  }

  Future<void> _handleTypeSelectedEvent(Emitter<CatalogState> emit, _TypeSelectedEvent event) =>
      _reload(emit, _data.filter.copyWith(types: {?event.type}));

  Future<void> _handleSortPressedEvent(Emitter<CatalogState> emit, _SortPressedEvent event) async {
    final sort = await appNavigator.push(SortSheetPage(selectedSort: _data.filter.sort));
    if (sort != null && sort != _data.filter.sort) {
      await _reload(emit, _data.filter.copyWith(sort: sort));
    }
  }

  Future<void> _handleLoadMoreEvent(Emitter<CatalogState> emit, _LoadMoreEvent event) async {
    if (state is! CatalogLoadedState || _data.strollers.length >= _data.total) {
      return;
    }
    final page = await _fetchPage(offset: _data.strollers.length);
    _data = _data.copyWith(strollers: [..._data.strollers, ...page.items], total: page.total);
    _emitLoaded(emit);
  }

  void _handleStrollerPressedEvent(Emitter<CatalogState> emit, _StrollerPressedEvent event) =>
      unawaited(appNavigator.push(StrollerDetailsPage(strollerId: event.strollerId)));

  void _handleAddToCartPressedEvent(Emitter<CatalogState> emit, _AddToCartPressedEvent event) {
    final stroller = _data.strollers.firstWhereOrNull((item) => item.id == event.strollerId);
    if (stroller == null) {
      return;
    }
    _cartRepository.add(stroller: stroller, color: stroller.colors.firstOrNull ?? '');
    toastService.showSuccess(appStrings.cartAdded('${stroller.brand} ${stroller.model}'));
  }

  void _handleAssistantPressedEvent(Emitter<CatalogState> emit, _AssistantPressedEvent event) =>
      _openTabMediator.notify(.assistant);

  void _handleCartPressedEvent(Emitter<CatalogState> emit, _CartPressedEvent event) =>
      _openTabMediator.notify(.cart);

  void _handleCartCountChangedEvent(Emitter<CatalogState> emit, _CartCountChangedEvent event) {
    _data = _data.copyWith(cartCount: event.count);
    final data = _mapper.toCatalogVM(_data);
    emit(state.copyWith(data: data));
  }

  void _handleCartCount(int count) => add(.cartCountChanged(count: count));

  Future<void> _reload(Emitter<CatalogState> emit, StrollerFilter filter) async {
    _data = _data.copyWith(filter: filter);
    emit(.loading(data: _mapper.toCatalogVM(_data)));
    final page = await _fetchPage(offset: 0);
    _data = _data.copyWith(strollers: page.items, total: page.total);
    _emitLoaded(emit);
  }

  Future<StrollersPage> _fetchPage({required int offset}) =>
      _catalogRepository.fetchStrollers(filter: _data.filter, limit: _pageSize, offset: offset);

  void _emitLoaded(Emitter<CatalogState> emit) => emit(.loaded(data: _mapper.toCatalogVM(_data)));
}
