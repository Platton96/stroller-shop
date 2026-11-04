import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';
import 'package:stroller_shop/features/tabs/open_tab_message.dart';
import 'package:stroller_shop/repositories/cart_repository.dart';

part 'tabs_bloc.freezed.dart';
part 'tabs_event.dart';
part 'tabs_state.dart';

@injectable
class TabsBloc extends BaseBloc<TabsEvent, TabsState> {
  TabsBloc(this._cartRepository)
    : super(const .initial(data: TabsVM(selectedTab: .catalog, cartCount: 0))) {
    addDisposables([
      _cartRepository.watchCount().listen(_handleCartCount),
      messageBus.stream<OpenTabMessage>().listen(_handleOpenTab),
    ]);
    on<TabsEvent>(
      (event, emit) => switch (event) {
        _TabSelectedEvent() => _handleTabSelectedEvent(emit, event),
        _CartCountChangedEvent() => _handleCartCountChangedEvent(emit, event),
      },
    );
  }

  final CartRepository _cartRepository;

  void _handleTabSelectedEvent(Emitter<TabsState> emit, _TabSelectedEvent event) =>
      emit(.ready(data: state.data.copyWith(selectedTab: event.tab)));

  void _handleCartCountChangedEvent(Emitter<TabsState> emit, _CartCountChangedEvent event) =>
      emit(.ready(data: state.data.copyWith(cartCount: event.count)));

  void _handleCartCount(int count) => add(.cartCountChanged(count: count));

  void _handleOpenTab(OpenTabMessage message) => add(.tabSelected(tab: message.value));
}
