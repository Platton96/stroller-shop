import 'package:flutter/material.dart';
import 'package:stroller_shop/features/stroller_details/models/spec_vm.dart';
import 'package:stroller_shop/l10n/generated/s.dart';
import 'package:stroller_shop/ui_kit/theme/app_radius.dart';
import 'package:stroller_shop/ui_kit/theme/app_theme.dart';

class SpecGrid extends StatelessWidget {
  const SpecGrid({required this.specs, super.key});

  final List<SpecVM> specs;

  @override
  Widget build(BuildContext context) => GridView.builder(
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

class _SpecTile extends StatelessWidget {
  const _SpecTile({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) => DecoratedBox(
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

extension on SpecVM {
  (String, String) texts(S strings) => switch (this) {
    WeightSpecVM(:final kg) => (strings.specWeight, strings.weightKg(kg)),
    AgeSpecVM(:final fromMonths, toMonths: final toMonths?) => (
      strings.specAge,
      strings.specAgeRange(fromMonths, toMonths),
    ),
    AgeSpecVM(:final fromMonths) => (strings.specAge, strings.specAgeFrom(fromMonths)),
    MaxLoadSpecVM(:final kg) => (strings.specMaxLoad, strings.specMaxLoadValue(kg)),
    WheelsSpecVM(:final kind, :final rawValue) => (
      strings.specWheels,
      switch (kind) {
        .foam => strings.wheelsFoam,
        .inflatable => strings.wheelsInflatable,
        .plastic => strings.wheelsPlastic,
        .other => strings.wheelsOther(rawValue),
      },
    ),
    SuspensionSpecVM() => (strings.specSuspension, strings.suspensionAllWheels),
    SeatSpecVM(:final isReversible) => (
      strings.specSeat,
      isReversible ? strings.seatReversible : strings.seatForwardOnly,
    ),
    FoldedSpecVM(:final lengthCm, :final widthCm, :final heightCm) => (
      strings.specFolded,
      strings.specFoldedValue(lengthCm, widthCm, heightCm),
    ),
  };
}
