import 'package:flutter/foundation.dart';
import 'package:stroller_shop/core/navigation/pages.dart';
import 'package:stroller_shop/features/stroller_details/stroller_details_screen.dart';

class StrollerDetailsPage extends AdaptivePage<void> {
  StrollerDetailsPage({required String strollerId})
    : super(
        (_) => StrollerDetailsScreen(strollerId: strollerId),
        key: ValueKey('StrollerDetailsPage:$strollerId'),
      );
}
