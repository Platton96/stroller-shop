import 'package:flutter/material.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class ChatInputBar extends StatefulWidget {
  const ChatInputBar({required this.isEnabled, required this.onSubmitted, super.key});

  final bool isEnabled;
  final ValueChanged<String> onSubmitted;

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final strings = S.of(context);
    const noBorder = OutlineInputBorder(borderRadius: AppRadius.input, borderSide: BorderSide.none);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(top: BorderSide(color: colors.border)),
      ),
      child: Padding(
        padding: const .fromLTRB(16, 10, 12, 10),
        child: Row(
          spacing: 8,
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                enabled: widget.isEnabled,
                minLines: 1,
                maxLines: 4,
                textInputAction: .send,
                onSubmitted: (_) => _submit(),
                style: context.textStyles.body,
                decoration: InputDecoration(
                  hintText: strings.assistantInputHint,
                  hintStyle: context.textStyles.body.copyWith(color: colors.textSecondary),
                  filled: true,
                  fillColor: colors.background,
                  contentPadding: const .symmetric(horizontal: 18, vertical: 13),
                  border: noBorder,
                  enabledBorder: noBorder,
                  disabledBorder: noBorder,
                  focusedBorder: noBorder,
                ),
              ),
            ),
            Semantics(
              button: true,
              enabled: widget.isEnabled,
              label: strings.assistantSendLabel,
              excludeSemantics: true,
              child: Material(
                color: widget.isEnabled ? colors.accent : colors.indicatorInactive,
                shape: const CircleBorder(),
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: widget.isEnabled ? _submit : null,
                  child: SizedBox.square(
                    dimension: 46,
                    child: Icon(Icons.arrow_upward_rounded, color: colors.onAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final text = _controller.text.trim();
    if (text.isEmpty) {
      return;
    }
    widget.onSubmitted(text);
    _controller.clear();
  }
}
