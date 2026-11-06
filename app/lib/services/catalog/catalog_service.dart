import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stroller_shop/services/catalog/obj/stroller_obj.dart';
import 'package:stroller_shop/services/catalog/response/stroller_type_info_response_obj.dart';
import 'package:stroller_shop/services/catalog/response/strollers_page_response_obj.dart';

export 'obj/stroller_obj.dart';
export 'obj/stroller_sort_obj.dart';
export 'obj/stroller_type_obj.dart';
export 'response/stroller_type_info_response_obj.dart';
export 'response/strollers_page_response_obj.dart';

part 'catalog_service.g.dart';

@lazySingleton
@RestApi()
abstract class CatalogService {
  @factoryMethod
  factory CatalogService(Dio dio) = _CatalogService;

  @GET('/api/v1/types')
  Future<List<StrollerTypeInfoResponseObj>> getTypes();

  @GET('/api/v1/strollers')
  Future<StrollersPageResponseObj> getStrollers({
    @Query('q') String? query,
    @Query('type') String? types,
    @Query('in_stock') bool? isInStockOnly,
    @Query('sort') String? sort,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
  });

  @GET('/api/v1/strollers/{id}')
  Future<StrollerObj> getStroller(@Path('id') String id);
}
