part of 'catalog_bloc.dart';

@freezed
sealed class CatalogState with _$CatalogState {
  const factory CatalogState.initial({required CatalogVM data}) = CatalogInitialState;

  const factory CatalogState.loading({required CatalogVM data}) = CatalogLoadingState;

  const factory CatalogState.loaded({required CatalogVM data}) = CatalogLoadedState;

  @Implements<BlocErrorStateInterface>()
  const factory CatalogState.error({required CatalogVM data, required Exception exception}) =
      CatalogErrorState;
}
