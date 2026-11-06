import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stroller_shop/services/shop/response/shop_response_obj.dart';

export 'response/shop_response_obj.dart';

part 'shop_service.g.dart';

@lazySingleton
@RestApi()
abstract class ShopService {
  @factoryMethod
  factory ShopService(Dio dio) = _ShopService;

  @GET('/api/v1/shop')
  Future<ShopResponseObj> getShop();
}
