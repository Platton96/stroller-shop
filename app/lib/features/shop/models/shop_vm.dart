import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stroller_shop/features/shop/models/shop_delivery_vm.dart';

part 'shop_vm.freezed.dart';

@freezed
abstract class ShopVM with _$ShopVM {
  const factory ShopVM({
    required String name,
    required String tagline,
    required String address,
    required String phone,
    required String workingHours,
    required List<ShopDeliveryVM> delivery,
    required List<String> payment,
    required String returns,
    required String warranty,
    required String testDrive,
    required String disclaimer,
  }) = _ShopVM;

  factory ShopVM.initial() => const ShopVM(
    name: '',
    tagline: '',
    address: '',
    phone: '',
    workingHours: '',
    delivery: [],
    payment: [],
    returns: '',
    warranty: '',
    testDrive: '',
    disclaimer: '',
  );
}
