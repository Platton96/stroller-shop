part of 'shop_bloc.dart';

@freezed
sealed class ShopState with _$ShopState {
  const factory ShopState.initial({required ShopVM data}) = ShopInitialState;

  const factory ShopState.loading({required ShopVM data}) = ShopLoadingState;

  const factory ShopState.loaded({required ShopVM data}) = ShopLoadedState;

  @Implements<BlocErrorStateInterface>()
  const factory ShopState.error({required ShopVM data, required Exception exception}) =
      ShopErrorState;
}
