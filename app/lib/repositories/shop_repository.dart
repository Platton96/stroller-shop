import 'package:injectable/injectable.dart';
import 'package:stroller_shop/objects/objects.dart';
import 'package:stroller_shop/repositories/base_repository.dart';
import 'package:stroller_shop/services/shop/shop_service.dart';

@lazySingleton
class ShopRepository extends BaseRepository {
  ShopRepository(this._service);

  final ShopService _service;
  Shop? _cachedShop;

  Future<Shop> fetchShop() async {
    if (_cachedShop case final cachedShop?) {
      return cachedShop;
    }
    final shop = await guardApiCall(_service.getShop);
    _cachedShop = shop;

    return shop;
  }
}
