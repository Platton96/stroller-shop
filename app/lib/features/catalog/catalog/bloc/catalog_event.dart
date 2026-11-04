part of 'catalog_bloc.dart';

@freezed
sealed class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.init() = _InitEvent;

  const factory CatalogEvent.retryPressed() = _RetryPressedEvent;

  const factory CatalogEvent.queryChanged({required String query}) = _QueryChangedEvent;

  const factory CatalogEvent.typeSelected({required StrollerType? type}) = _TypeSelectedEvent;

  const factory CatalogEvent.sortPressed() = _SortPressedEvent;

  const factory CatalogEvent.loadMore() = _LoadMoreEvent;

  const factory CatalogEvent.strollerPressed({required String strollerId}) = _StrollerPressedEvent;

  const factory CatalogEvent.addToCartPressed({required String strollerId}) =
      _AddToCartPressedEvent;

  const factory CatalogEvent.assistantPressed() = _AssistantPressedEvent;

  const factory CatalogEvent.cartPressed() = _CartPressedEvent;

  const factory CatalogEvent.cartCountChanged({required int count}) = _CartCountChangedEvent;
}
