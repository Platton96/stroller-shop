// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:stroller_shop/core/bloc/base_bloc.dart' as _i9;
import 'package:stroller_shop/core/navigation/app_navigator.dart' as _i940;
import 'package:stroller_shop/core/toast/toast_service.dart' as _i264;
import 'package:stroller_shop/di/navigation_module.dart' as _i242;
import 'package:stroller_shop/di/network_module.dart' as _i624;
import 'package:stroller_shop/features/assistant/bloc/assistant_bloc.dart'
    as _i525;
import 'package:stroller_shop/features/assistant/mappers/assistant_vm_mapper.dart'
    as _i341;
import 'package:stroller_shop/features/assistant/mediators/ask_assistant_mediator.dart'
    as _i942;
import 'package:stroller_shop/features/cart/bloc/cart_bloc.dart' as _i714;
import 'package:stroller_shop/features/cart/mappers/cart_vm_mapper.dart'
    as _i415;
import 'package:stroller_shop/features/catalog/catalog/bloc/catalog_bloc.dart'
    as _i87;
import 'package:stroller_shop/features/catalog/catalog/mappers/catalog_vm_mapper.dart'
    as _i863;
import 'package:stroller_shop/features/catalog/sort_sheet/bloc/sort_sheet_bloc.dart'
    as _i500;
import 'package:stroller_shop/features/shop/bloc/shop_bloc.dart' as _i442;
import 'package:stroller_shop/features/shop/mappers/shop_vm_mapper.dart'
    as _i646;
import 'package:stroller_shop/features/stroller_details/bloc/stroller_details_bloc.dart'
    as _i708;
import 'package:stroller_shop/features/stroller_details/mappers/stroller_details_vm_mapper.dart'
    as _i310;
import 'package:stroller_shop/features/tabs/bloc/tabs_bloc.dart' as _i984;
import 'package:stroller_shop/features/tabs/mediators/open_tab_mediator.dart'
    as _i349;
import 'package:stroller_shop/repositories/assistant_repository.dart' as _i441;
import 'package:stroller_shop/repositories/cart_repository.dart' as _i176;
import 'package:stroller_shop/repositories/catalog_repository.dart' as _i130;
import 'package:stroller_shop/repositories/shop_repository.dart' as _i301;
import 'package:stroller_shop/services/assistant/assistant_service.dart'
    as _i105;
import 'package:stroller_shop/services/catalog/catalog_service.dart' as _i776;
import 'package:stroller_shop/services/shop/shop_service.dart' as _i831;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final navigationModule = _$NavigationModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i415.CartVMMapper>(() => const _i415.CartVMMapper());
    gh.factory<_i863.CatalogVMMapper>(() => const _i863.CatalogVMMapper());
    gh.factory<_i646.ShopVMMapper>(() => const _i646.ShopVMMapper());
    gh.factory<_i310.StrollerDetailsVMMapper>(
      () => const _i310.StrollerDetailsVMMapper(),
    );
    gh.lazySingleton<_i940.AppNavigator>(() => navigationModule.appNavigator());
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio());
    gh.lazySingleton<_i942.AskAssistantMediator>(
      () => _i942.AskAssistantMediator(),
    );
    gh.lazySingleton<_i349.OpenTabMediator>(() => _i349.OpenTabMediator());
    gh.lazySingleton<_i176.CartRepository>(
      () => _i176.CartRepository(),
      dispose: (i) => i.dispose(),
    );
    gh.factoryParam<_i500.SortSheetBloc, _i9.StrollerSort, dynamic>(
      (selectedSort, _) => _i500.SortSheetBloc(selectedSort),
    );
    gh.lazySingleton<_i105.AssistantService>(
      () => _i105.AssistantService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i776.CatalogService>(
      () => _i776.CatalogService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i831.ShopService>(
      () => _i831.ShopService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i264.ToastService>(() => _i264.SnackBarToastService());
    gh.factory<_i984.TabsBloc>(
      () => _i984.TabsBloc(
        gh<_i176.CartRepository>(),
        gh<_i349.OpenTabMediator>(),
      ),
    );
    gh.lazySingleton<_i301.ShopRepository>(
      () => _i301.ShopRepository(gh<_i831.ShopService>()),
    );
    gh.factory<_i341.AssistantVMMapper>(
      () => _i341.AssistantVMMapper(gh<_i863.CatalogVMMapper>()),
    );
    gh.lazySingleton<_i441.AssistantRepository>(
      () => _i441.AssistantRepository(gh<_i105.AssistantService>()),
    );
    gh.factory<_i525.AssistantBloc>(
      () => _i525.AssistantBloc(
        gh<_i441.AssistantRepository>(),
        gh<_i176.CartRepository>(),
        gh<_i341.AssistantVMMapper>(),
        gh<_i942.AskAssistantMediator>(),
        gh<_i349.OpenTabMediator>(),
      ),
    );
    gh.lazySingleton<_i130.CatalogRepository>(
      () => _i130.CatalogRepository(gh<_i776.CatalogService>()),
    );
    gh.factory<_i87.CatalogBloc>(
      () => _i87.CatalogBloc(
        gh<_i130.CatalogRepository>(),
        gh<_i301.ShopRepository>(),
        gh<_i176.CartRepository>(),
        gh<_i863.CatalogVMMapper>(),
        gh<_i349.OpenTabMediator>(),
      ),
    );
    gh.factory<_i714.CartBloc>(
      () => _i714.CartBloc(
        gh<_i176.CartRepository>(),
        gh<_i301.ShopRepository>(),
        gh<_i415.CartVMMapper>(),
        gh<_i349.OpenTabMediator>(),
      ),
    );
    gh.factory<_i442.ShopBloc>(
      () =>
          _i442.ShopBloc(gh<_i301.ShopRepository>(), gh<_i646.ShopVMMapper>()),
    );
    gh.factoryParam<_i708.StrollerDetailsBloc, String, dynamic>(
      (_strollerId, _) => _i708.StrollerDetailsBloc(
        _strollerId,
        gh<_i130.CatalogRepository>(),
        gh<_i176.CartRepository>(),
        gh<_i310.StrollerDetailsVMMapper>(),
        gh<_i942.AskAssistantMediator>(),
        gh<_i349.OpenTabMediator>(),
      ),
    );
    return this;
  }
}

class _$NavigationModule extends _i242.NavigationModule {}

class _$NetworkModule extends _i624.NetworkModule {}
