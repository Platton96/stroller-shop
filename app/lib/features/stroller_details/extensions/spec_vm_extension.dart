import 'package:stroller_shop/features/stroller_details/ui_models/spec_vm.dart';
import 'package:stroller_shop/l10n/generated/s.dart';

extension SpecVMExtension on SpecVM {
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
