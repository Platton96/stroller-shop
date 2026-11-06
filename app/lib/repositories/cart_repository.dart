import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stroller_shop/entities/entities.dart';

@lazySingleton
class CartRepository {
  final _items = BehaviorSubject<List<CartItem>>.seeded(const []);

  List<CartItem> get items => _items.value;

  Stream<List<CartItem>> watchItems() => _items.stream;

  Stream<int> watchCount() =>
      _items.stream.map((items) => items.map((item) => item.quantity).sum).distinct();

  void add({required Stroller stroller, required String color, bool isAddedByAssistant = false}) {
    final existing = _find(stroller.id, color);
    if (existing == null) {
      _items.add([
        ...items,
        CartItem(
          stroller: stroller,
          color: color,
          quantity: 1,
          isAddedByAssistant: isAddedByAssistant,
        ),
      ]);
    } else {
      changeQuantity(item: existing, delta: 1);
    }
  }

  void changeQuantity({required CartItem item, required int delta}) {
    final quantity = item.quantity + delta;
    _items.add(
      quantity <= 0
          ? items.whereNot((element) => _isSame(element, item)).toList()
          : items
                .map(
                  (element) =>
                      _isSame(element, item) ? element.copyWith(quantity: quantity) : element,
                )
                .toList(),
    );
  }

  void remove(CartItem item) =>
      _items.add(items.whereNot((element) => _isSame(element, item)).toList());

  void clear() => _items.add(const []);

  @disposeMethod
  Future<void> dispose() => _items.close();

  CartItem? _find(String strollerId, String color) => items.firstWhereOrNull(
    (item) => item.stroller.id == strollerId && item.color == color,
  );

  bool _isSame(CartItem left, CartItem right) =>
      left.stroller.id == right.stroller.id && left.color == right.color;
}
