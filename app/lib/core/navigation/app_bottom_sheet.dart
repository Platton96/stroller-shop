import 'package:flutter/material.dart';

Future<T?> showAppBottomSheet<T>(BuildContext context, WidgetBuilder builder) =>
    showModalBottomSheet<T>(
      context: context,
      builder: builder,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
    );
