part of 'stroller_details_bloc.dart';

@freezed
sealed class StrollerDetailsState with _$StrollerDetailsState {
  const factory StrollerDetailsState.initial() = StrollerDetailsInitialState;

  const factory StrollerDetailsState.loading() = StrollerDetailsLoadingState;

  const factory StrollerDetailsState.loaded({required StrollerDetailsVM data}) =
      StrollerDetailsLoadedState;

  @Implements<BlocErrorStateInterface>()
  const factory StrollerDetailsState.error({required Exception exception}) =
      StrollerDetailsErrorState;
}
