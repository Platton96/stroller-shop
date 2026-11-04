import 'package:flutter/widgets.dart';

abstract final class AppRadius {
  static const card = BorderRadius.all(Radius.circular(20));
  static const image = BorderRadius.all(Radius.circular(14));
  static const button = BorderRadius.all(Radius.circular(16));
  static const field = BorderRadius.all(Radius.circular(14));
  static const bubble = BorderRadius.all(Radius.circular(18));
  static const input = BorderRadius.all(Radius.circular(23));
  static const userBubble = BorderRadius.only(
    topLeft: Radius.circular(18),
    topRight: Radius.circular(18),
    bottomLeft: Radius.circular(18),
    bottomRight: Radius.circular(4),
  );
  static const assistantBubble = BorderRadius.only(
    topLeft: Radius.circular(18),
    topRight: Radius.circular(18),
    bottomLeft: Radius.circular(4),
    bottomRight: Radius.circular(18),
  );
  static const pill = BorderRadius.all(Radius.circular(999));
}
