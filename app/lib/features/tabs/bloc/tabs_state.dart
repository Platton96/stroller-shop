part of 'tabs_bloc.dart';

@freezed
sealed class TabsState with _$TabsState {
  const factory TabsState.initial({required TabsVM data}) = TabsInitialState;

  const factory TabsState.ready({required TabsVM data}) = TabsReadyState;
}

@freezed
abstract class TabsVM with _$TabsVM {
  const factory TabsVM({required AppTab selectedTab, required int cartCount}) = _TabsVM;
}
