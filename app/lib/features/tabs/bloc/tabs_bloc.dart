import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';
import 'package:stroller_shop/features/tabs/mediators/open_tab_mediator.dart';
import 'package:stroller_shop/repositories/cart_repository.dart';

part 'tabs_bloc.freezed.dart';
part 'tabs_event.dart';
part 'tabs_state.dart';

@injectable
class TabsBloc extends BaseBloc<TabsEvent, TabsState> {
  TabsBloc(this._cartRepository, this._openTabMediator)
    : super(const .initial(data: TabsVM(selectedTab: .catalog, cartCount: 0))) {
    addDisposables([
      _cartRepository.watchCount().listen(_handleCartCount),
      _openTabMediator.stream.listen(_handleOpenTab),
    ]);
    on<TabsEvent>(
      (event, emit) => switch (event) {
        _TabSelectedEvent() => _handleTabSelectedEvent(emit, event),
        _CartCountChangedEvent() => _handleCartCountChangedEvent(emit, event),
      },
    );
  }

  final CartRepository _cartRepository;
  final OpenTabMediator _openTabMediator;

  void _handleTabSelectedEvent(Emitter<TabsState> emit, _TabSelectedEvent event) =>
      emit(.ready(data: state.data.copyWith(selectedTab: event.tab)));

  void _handleCartCountChangedEvent(Emitter<TabsState> emit, _CartCountChangedEvent event) =>
      emit(.ready(data: state.data.copyWith(cartCount: event.count)));

  void _handleCartCount(int count) => add(.cartCountChanged(count: count));

  void _handleOpenTab(AppTab tab) => add(.tabSelected(tab: tab));
}
