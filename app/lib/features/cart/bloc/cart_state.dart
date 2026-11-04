part of 'cart_bloc.dart';

@freezed
sealed class CartState with _$CartState {
  const factory CartState.initial({required CartVM data}) = CartInitialState;

  const factory CartState.loading({required CartVM data}) = CartLoadingState;

  const factory CartState.loaded({required CartVM data}) = CartLoadedState;

  @Implements<BlocErrorStateInterface>()
  const factory CartState.error({required CartVM data, required Exception exception}) =
      CartErrorState;
}
