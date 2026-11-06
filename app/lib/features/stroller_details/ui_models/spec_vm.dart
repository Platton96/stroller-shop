import 'package:freezed_annotation/freezed_annotation.dart';

part 'spec_vm.freezed.dart';

enum WheelsKind { foam, inflatable, plastic, other }

@freezed
sealed class SpecVM with _$SpecVM {
  const factory SpecVM.weight({required double kg}) = WeightSpecVM;

  const factory SpecVM.age({required int fromMonths, required int? toMonths}) = AgeSpecVM;

  const factory SpecVM.maxLoad({required double kg}) = MaxLoadSpecVM;

  const factory SpecVM.wheels({required WheelsKind kind, required String rawValue}) = WheelsSpecVM;

  const factory SpecVM.allWheelSuspension() = SuspensionSpecVM;

  const factory SpecVM.seat({required bool isReversible}) = SeatSpecVM;

  const factory SpecVM.folded({
    required double lengthCm,
    required double widthCm,
    required double heightCm,
  }) = FoldedSpecVM;
}
