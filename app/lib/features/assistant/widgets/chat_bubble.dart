import 'package:flutter/material.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

enum ChatBubbleSide { user, assistant }

class ChatBubble extends StatelessWidget {
  final Widget child;
  final ChatBubbleSide side;

  const ChatBubble.user({required this.child, super.key}) : side = .user;

  const ChatBubble.assistant({required this.child, super.key}) : side = .assistant;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyle = context.textStyles.body.copyWith(height: 1.4);

    return switch (side) {
      .user => _Bubble(
        alignment: .centerRight,
        background: colors.textPrimary,
        radius: AppRadius.userBubble,
        widthFactor: 0.8,
        textStyle: textStyle.copyWith(color: colors.onAccent),
        child: child,
      ),
      .assistant => _Bubble(
        alignment: .centerLeft,
        background: colors.surface,
        radius: AppRadius.assistantBubble,
        widthFactor: 0.85,
        textStyle: textStyle,
        child: child,
      ),
    };
  }
}

class _Bubble extends StatelessWidget {
  final Alignment alignment;
  final Color background;
  final BorderRadius radius;
  final double widthFactor;
  final TextStyle textStyle;
  final Widget child;

  const _Bubble({
    required this.alignment,
    required this.background,
    required this.radius,
    required this.widthFactor,
    required this.textStyle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
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
