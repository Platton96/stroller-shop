import 'package:stroller_shop/features/catalog/catalog/models/stroller_card_vm.dart';
import 'package:stroller_shop/l10n/generated/s.dart';

extension StrollerCardVMExtension on StrollerCardVM {
  String meta(S strings) => [
    if (weightKg case final weight?) strings.weightKg(weight),
    ageFromMonths == 0 ? strings.ageFromBirth : strings.ageFromMonths(ageFromMonths),
  ].join(strings.metaSeparator);

  String priceLabel(S strings) =>
      isPriceApproximate ? strings.priceApproxByn(priceByn) : strings.priceByn(priceByn);
}
