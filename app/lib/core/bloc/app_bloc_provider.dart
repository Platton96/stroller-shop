import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroller_shop/di/service_locator.dart';

class AppBlocProvider<T extends StateStreamableSource<Object?>> extends BlocProvider<T> {
  AppBlocProvider({ValueSetter<T>? postCreate, Object? param1, super.child, super.lazy, super.key})
    : super(
        create: (_) {
          final bloc = ServiceLocator.getIt.get<T>(param1: param1);
          postCreate?.call(bloc);

          return bloc;
        },
      );
}
