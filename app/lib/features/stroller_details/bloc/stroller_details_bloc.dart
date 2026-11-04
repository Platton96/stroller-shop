import 'package:stroller_shop/core/bloc/base_bloc.dart';
import 'package:stroller_shop/features/assistant/messages/ask_assistant_message.dart';
import 'package:stroller_shop/features/stroller_details/mappers/stroller_details_vm_mapper.dart';
import 'package:stroller_shop/features/stroller_details/models/stroller_details_vm.dart';
import 'package:stroller_shop/features/tabs/open_tab_message.dart';
import 'package:stroller_shop/l10n/app_strings.dart';
import 'package:stroller_shop/repositories/cart_repository.dart';
import 'package:stroller_shop/repositories/catalog_repository.dart';

part 'stroller_details_bloc.freezed.dart';
part 'stroller_details_event.dart';
part 'stroller_details_state.dart';

@injectable
class StrollerDetailsBloc extends BaseBloc<StrollerDetailsEvent, StrollerDetailsState> {
  StrollerDetailsBloc(
    @factoryParam this._strollerId,
    this._catalogRepository,
    this._cartRepository,
    this._mapper,
  ) : super(const .initial()) {
    on<StrollerDetailsEvent>(
      (event, emit) => switch (event) {
        _InitEvent() => _handleInitEvent(emit, event),
        _RetryPressedEvent() => _handleRetryPressedEvent(emit, event),
        _ColorSelectedEvent() => _handleColorSelectedEvent(emit, event),
        _AddToCartPressedEvent() => _handleAddToCartPressedEvent(emit, event),
        _AskAssistantPressedEvent() => _handleAskAssistantPressedEvent(emit, event),
        _BackPressedEvent() => _handleBackPressedEvent(emit, event),
      },
    );
  }

  final String _strollerId;
  final CatalogRepository _catalogRepository;
  final CartRepository _cartRepository;
  final StrollerDetailsVMMapper _mapper;

  Stroller? _stroller;
  var _selectedColor = '';

  @override
  void handleGeneralException(
    StrollerDetailsEvent event,
    Emitter<StrollerDetailsState> emit,
    Exception exception,
  ) => emit(.error(exception: exception));

  Future<void> _handleInitEvent(Emitter<StrollerDetailsState> emit, _InitEvent event) async {
    emit(const .loading());
    final stroller = await _catalogRepository.fetchStroller(_strollerId);
    _stroller = stroller;
    _selectedColor = stroller.colors.firstOrNull ?? '';
    _emitLoaded(emit, stroller);
  }

  Future<void> _handleRetryPressedEvent(
    Emitter<StrollerDetailsState> emit,
    _RetryPressedEvent event,
  ) => _handleInitEvent(emit, const _InitEvent());

  void _handleColorSelectedEvent(Emitter<StrollerDetailsState> emit, _ColorSelectedEvent event) {
    if (_stroller case final stroller?) {
      _selectedColor = event.color;
      _emitLoaded(emit, stroller);
    }
  }

  void _handleAddToCartPressedEvent(
    Emitter<StrollerDetailsState> emit,
    _AddToCartPressedEvent event,
  ) {
    if (_stroller case final stroller?) {
      _cartRepository.add(stroller: stroller, color: _selectedColor);
      toastService.showSuccess(appStrings.cartAdded('${stroller.brand} ${stroller.model}'));
    }
  }

  void _handleAskAssistantPressedEvent(
    Emitter<StrollerDetailsState> emit,
    _AskAssistantPressedEvent event,
  ) {
    if (_stroller case final stroller?) {
      messageBus.send(AskAssistantMessage(stroller));
    }
    messageBus.send(const OpenTabMessage(.assistant));
    appNavigator.pop();
  }

  void _handleBackPressedEvent(Emitter<StrollerDetailsState> emit, _BackPressedEvent event) =>
      appNavigator.pop();

  void _emitLoaded(Emitter<StrollerDetailsState> emit, Stroller stroller) =>
      emit(.loaded(data: _mapper.toStrollerDetailsVM(stroller, selectedColor: _selectedColor)));
}
