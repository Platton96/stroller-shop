import 'package:flutter/material.dart';
import 'package:stroller_shop/features/stroller_details/extensions/spec_vm_extension.dart';
import 'package:stroller_shop/features/stroller_details/ui_models/spec_vm.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class SpecGrid extends StatelessWidget {
  final List<SpecVM> specs;

  const SpecGrid({required this.specs, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: .zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: 62,
      ),
      itemCount: specs.length,
      itemBuilder: (context, index) {
        final (title, value) = specs[index].texts(S.of(context));

        return _SpecTile(title: title, value: value);
      },
    );
  }
}

class _SpecTile extends StatelessWidget {
  final String title;
  final String value;

  const _SpecTile({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: context.colors.surface, borderRadius: AppRadius.image),
      child: Padding(
        padding: const .symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: .start,
          mainAxisAlignment: .center,
          spacing: 2,
          children: [
            Text(
              title,
              style: context.textStyles.label.copyWith(
                fontWeight: .w400,
                color: context.colors.textSecondary,
              ),
              maxLines: 1,
              overflow: .ellipsis,
            ),
            Text(
              value,
              style: context.textStyles.captionStrong.copyWith(fontSize: 14, fontWeight: .w700),
              maxLines: 1,
              overflow: .ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
