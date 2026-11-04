import 'package:injectable/injectable.dart';
import 'package:stroller_shop/features/stroller_details/models/spec_vm.dart';
import 'package:stroller_shop/features/stroller_details/models/stroller_details_vm.dart';
import 'package:stroller_shop/objects/objects.dart';

@injectable
class StrollerDetailsVMMapper {
  const StrollerDetailsVMMapper();

  StrollerDetailsVM toStrollerDetailsVM(Stroller stroller, {required String selectedColor}) =>
      StrollerDetailsVM(
        brand: stroller.brand,
        model: stroller.model,
        type: stroller.type,
        rating: stroller.rating,
        priceByn: stroller.priceByn,
        isPriceApproximate: stroller.isPriceApproximate,
        isInStock: stroller.isInStock,
        stockQuantity: stroller.stockQuantity,
        colors: stroller.colors,
        selectedColor: selectedColor,
        specs: _toSpecs(stroller),
        description: stroller.description,
        features: stroller.features,
        imageUrl: stroller.imageUrl,
      );

  List<SpecVM> _toSpecs(Stroller stroller) => [
    if (stroller.weightKg case final weight?) SpecVM.weight(kg: weight),
    SpecVM.age(fromMonths: stroller.ageFromMonths, toMonths: stroller.ageToMonths),
    if (stroller.maxChildWeightKg case final maxLoad?) SpecVM.maxLoad(kg: maxLoad),
    if (stroller.wheels.isNotEmpty)
      SpecVM.wheels(kind: _toWheelsKind(stroller.wheels), rawValue: stroller.wheels),
    if (stroller.suspension == 'all_wheels') const SpecVM.allWheelSuspension(),
    SpecVM.seat(isReversible: stroller.isReversibleSeat),
    if (stroller.foldedDimensions case final dimensions?)
      SpecVM.folded(
        lengthCm: dimensions.lengthCm,
        widthCm: dimensions.widthCm,
        heightCm: dimensions.heightCm,
      ),
  ];

  WheelsKind _toWheelsKind(String wheels) => switch (wheels) {
    'foam' => .foam,
    'inflatable' => .inflatable,
    'plastic' => .plastic,
    _ => .other,
  };
}
