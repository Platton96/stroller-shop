import 'package:injectable/injectable.dart';
import 'package:stroller_shop/core/mediator/mediator.dart';
import 'package:stroller_shop/features/tabs/app_tab.dart';

@lazySingleton
class OpenTabMediator extends Mediator<AppTab> {}
