import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/cart/mappers/cart_vm_mapper.dart';
import 'package:stroller_shop/features/cart/models/cart.dart';
import 'package:stroller_shop/features/cart/ui_models/cart_vm.dart';
import 'package:stroller_shop/features/tabs/mediators/open_tab_mediator.dart';
import 'package:stroller_shop/l10n/app_strings.dart';
import 'package:stroller_shop/repositories/cart_repository.dart';
import 'package:stroller_shop/repositories/shop_repository.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

@injectable
class CartBloc extends BaseBloc<CartEvent, CartState> {
  final CartRepository _cartRepository;
  final ShopRepository _shopRepository;
  final CartVMMapper _mapper;
  final OpenTabMediator _openTabMediator;

  var _cart = Cart.initial();

  CartBloc(this._cartRepository, this._shopRepository, this._mapper, this._openTabMediator)
    : super(.initial(data: _mapper.toCartVM(Cart.initial()))) {
    addDisposable(_cartRepository.watchItems().listen(_handleItems));
    on<CartEvent>(
      (event, emit) => switch (event) {
        _InitEvent() => _handleInitEvent(emit, event),
        _RetryPressedEvent() => _handleRetryPressedEvent(emit, event),
        _ItemsChangedEvent() => _handleItemsChangedEvent(emit, event),
        _QuantityChangedEvent() => _handleQuantityChangedEvent(emit, event),
        _DeliverySelectedEvent() => _handleDeliverySelectedEvent(emit, event),
        _CheckoutPressedEvent() => _handleCheckoutPressedEvent(emit, event),
        _CatalogPressedEvent() => _handleCatalogPressedEvent(emit, event),
      },
    );
  }

  @override
  void handleGeneralException(
    CartEvent event,
    Emitter<CartState> emit,
    Exception exception,
  ) => emit(.error(data: state.data, exception: exception));

  Future<void> _handleInitEvent(Emitter<CartState> emit, _InitEvent event) async {
    emit(.loading(data: state.data));
    final shop = await _shopRepository.fetchShop();
    _cart = _cart.copyWith(
      deliveryOptions: shop.delivery,
      selectedDeliveryMethod: shop.delivery.firstOrNull?.method,
    );
    _emitLoaded(emit);
  }

  Future<void> _handleRetryPressedEvent(Emitter<CartState> emit, _RetryPressedEvent event) =>
      _handleInitEvent(emit, const _InitEvent());

  void _handleItemsChangedEvent(Emitter<CartState> emit, _ItemsChangedEvent event) {
    _cart = _cart.copyWith(items: event.items);
    emit(state.copyWith(data: _mapper.toCartVM(_cart)));
  }

  void _handleQuantityChangedEvent(Emitter<CartState> emit, _QuantityChangedEvent event) {
    final item = _cart.items.firstWhereOrNull(
      (item) => item.stroller.id == event.strollerId && item.color == event.color,
    );
    if (item == null) {
      return;
    }
    _cartRepository.changeQuantity(item: item, delta: event.delta);
  }

  void _handleDeliverySelectedEvent(Emitter<CartState> emit, _DeliverySelectedEvent event) {
    _cart = _cart.copyWith(selectedDeliveryMethod: event.method);
    emit(state.copyWith(data: _mapper.toCartVM(_cart)));
  }

  void _handleCheckoutPressedEvent(Emitter<CartState> emit, _CheckoutPressedEvent event) {
    _cartRepository.clear();
    toastService.showSuccess(appStrings.cartCheckoutDone);
  }

  void _handleCatalogPressedEvent(Emitter<CartState> emit, _CatalogPressedEvent event) =>
      _openTabMediator.notify(.catalog);

  void _handleItems(List<CartItem> items) => add(.itemsChanged(items: items));

  void _emitLoaded(Emitter<CartState> emit) => emit(.loaded(data: _mapper.toCartVM(_cart)));
}
