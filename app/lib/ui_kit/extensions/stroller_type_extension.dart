import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/l10n/generated/s.dart';

extension StrollerTypeExtension on StrollerType {
  String title(S strings) => switch (this) {
    .modular2in1 => strings.strollerTypeModular2in1,
    .modular3in1 => strings.strollerTypeModular3in1,
    .stroll => strings.strollerTypeStroll,
    .travel => strings.strollerTypeTravel,
    .cane => strings.strollerTypeCane,
    .twin => strings.strollerTypeTwin,
    .jogger => strings.strollerTypeJogger,
    .undefined => strings.strollerTypeUndefined,
  };
}
