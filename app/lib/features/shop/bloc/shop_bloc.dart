import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/shop/mappers/shop_vm_mapper.dart';
import 'package:stroller_shop/features/shop/ui_models/shop_vm.dart';
import 'package:stroller_shop/repositories/shop_repository.dart';

part 'shop_bloc.freezed.dart';
part 'shop_event.dart';
part 'shop_state.dart';

@injectable
class ShopBloc extends BaseBloc<ShopEvent, ShopState> {
  final ShopRepository _shopRepository;
  final ShopVMMapper _mapper;

  ShopBloc(this._shopRepository, this._mapper) : super(.initial(data: ShopVM.initial())) {
    on<ShopEvent>(
      (event, emit) => switch (event) {
        _InitEvent() => _handleInitEvent(emit, event),
        _RetryPressedEvent() => _handleRetryPressedEvent(emit, event),
      },
    );
  }

  @override
  void handleGeneralException(
    ShopEvent event,
    Emitter<ShopState> emit,
    Exception exception,
  ) => emit(.error(data: state.data, exception: exception));

  Future<void> _handleInitEvent(Emitter<ShopState> emit, _InitEvent event) async {
    emit(.loading(data: state.data));
    final shop = await _shopRepository.fetchShop();
    emit(.loaded(data: _mapper.toShopVM(shop)));
  }

  Future<void> _handleRetryPressedEvent(Emitter<ShopState> emit, _RetryPressedEvent event) =>
      _handleInitEvent(emit, const _InitEvent());
}
