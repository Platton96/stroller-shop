import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

enum ChatBubbleSide { user, assistant }

class ChatBubble extends StatelessWidget {
  const ChatBubble.user({required this.child, super.key}) : side = .user;

  const ChatBubble.assistant({required this.child, super.key}) : side = .assistant;

  final Widget child;
  final ChatBubbleSide side;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final (
      Alignment alignment,
      Color background,
      BorderRadius radius,
      double widthFactor,
      TextStyle textStyle,
    ) = switch (side) {
      .user => (
        .centerRight,
        colors.textPrimary,
        AppRadius.userBubble,
        0.8,
        context.textStyles.body.copyWith(color: colors.onAccent, height: 1.4),
      ),
      .assistant => (
        .centerLeft,
        colors.surface,
        AppRadius.assistantBubble,
        0.85,
        context.textStyles.body.copyWith(height: 1.4),
      ),
    };

    return Align(
      alignment: alignment,
      child: LayoutBuilder(
        builder: (context, constraints) => ConstrainedBox(
          constraints: BoxConstraints(maxWidth: constraints.maxWidth * widthFactor),
          child: DecoratedBox(
            decoration: BoxDecoration(color: background, borderRadius: radius),
            child: Padding(
              padding: const .symmetric(horizontal: 14, vertical: 10),
              child: DefaultTextStyle(style: textStyle, child: child),
            ),
          ),
        ),
      ),
    );
  }
}
