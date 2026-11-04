import 'package:stroller_shop/core/bloc/base_bloc.dart';

part 'sort_sheet_bloc.freezed.dart';

@injectable
class SortSheetBloc extends BaseBloc<SortSheetEvent, SortSheetState> {
  SortSheetBloc(@factoryParam StrollerSort selectedSort)
    : super(.initial(selectedSort: selectedSort)) {
    on<SortSheetEvent>(
      (event, emit) => switch (event) {
        _SortSelectedEvent() => _handleSortSelectedEvent(emit, event),
      },
    );
  }

  void _handleSortSelectedEvent(Emitter<SortSheetState> emit, _SortSelectedEvent event) {
    emit(.initial(selectedSort: event.sort));
    appNavigator.pop(event.sort);
  }
}

@freezed
sealed class SortSheetEvent with _$SortSheetEvent {
  const factory SortSheetEvent.sortSelected({required StrollerSort sort}) = _SortSelectedEvent;
}

@freezed
sealed class SortSheetState with _$SortSheetState {
  const factory SortSheetState.initial({required StrollerSort selectedSort}) =
      SortSheetInitialState;
}
