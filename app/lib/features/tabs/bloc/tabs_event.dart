part of 'tabs_bloc.dart';

@freezed
sealed class TabsEvent with _$TabsEvent {
  const factory TabsEvent.tabSelected({required AppTab tab}) = _TabSelectedEvent;

  const factory TabsEvent.cartCountChanged({required int count}) = _CartCountChangedEvent;
}
