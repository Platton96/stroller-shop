import 'package:flutter/foundation.dart';
import 'package:stroller_shop/core/navigation/pages.dart';
import 'package:stroller_shop/features/tabs/tabs_screen.dart';

class TabsPage extends AdaptivePage<void> {
  TabsPage() : super((_) => const TabsScreen(), key: const ValueKey('TabsPage'));
}
