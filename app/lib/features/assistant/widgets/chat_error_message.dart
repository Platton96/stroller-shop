import 'package:flutter/material.dart';
import 'package:stroller_shop/features/assistant/widgets/chat_bubble.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class ChatErrorMessage extends StatelessWidget {
  final String message;
  final VoidCallback onRetryPressed;

  const ChatErrorMessage({required this.message, required this.onRetryPressed, super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return ChatBubble.assistant(
      child: Column(
        crossAxisAlignment: .start,
        mainAxisSize: .min,
        spacing: 4,
        children: [
          Text(message),
          TextButton.icon(
            onPressed: onRetryPressed,
            style: TextButton.styleFrom(
              padding: .zero,
              minimumSize: const Size(0, 36),
              foregroundColor: colors.accent,
              textStyle: context.textStyles.captionStrong,
            ),
            icon: const Icon(Icons.refresh_rounded, size: 18),
            label: Text(S.of(context).commonRetry),
          ),
        ],
      ),
    );
  }
}
