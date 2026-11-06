import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:stroller_shop/core/exceptions/app_exception.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/features/cart/bloc/cart_bloc.dart';
import 'package:stroller_shop/features/cart/mappers/cart_vm_mapper.dart';
import 'package:stroller_shop/features/tabs/mediators/open_tab_mediator.dart';
import 'package:stroller_shop/l10n/app_strings.dart';
import 'package:stroller_shop/repositories/cart_repository.dart';
import 'package:stroller_shop/repositories/shop_repository.dart';

import '../../helpers/test_infrastructure.dart';

class MockCartRepository extends Mock implements CartRepository {}

class MockShopRepository extends Mock implements ShopRepository {}

void main() {
  late MockCartRepository cartRepository;
  late MockShopRepository shopRepository;

  const standard = DeliveryOption(
    method: 'courier',
    title: 'Курьер',
    priceByn: 15,
    eta: '1-2 дня',
    freeFromByn: 500,
  );
  const pickup = DeliveryOption(
    method: 'pickup',
    title: 'Самовывоз',
    priceByn: 0,
    eta: 'сегодня',
    freeFromByn: null,
  );
  const shop = Shop(
    name: 'Колясочная',
    tagline: '',
    city: 'Минск',
    address: '',
    phone: '',
    workingHours: '',
    currency: 'BYN',
    delivery: [standard, pickup],
    payment: [],
    returns: '',
    warranty: '',
    testDrive: '',
    disclaimer: '',
  );
  const stroller = Stroller(
    id: 's1',
    brand: 'Bugaboo',
    model: 'Fox',
    type: .stroll,
    description: '',
    priceByn: 100,
    isPriceApproximate: false,
    ageFromMonths: 0,
    ageToMonths: null,
    maxChildWeightKg: null,
    weightKg: null,
    foldedDimensions: null,
    isCabinLuggage: false,
    isOneHandFold: false,
    wheels: '',
    suspension: '',
    isSeatReclinesFlat: false,
    isReversibleSeat: false,
    season: .all,
    terrain: .city,
    colors: ['black'],
    features: [],
    isInStock: true,
    stockQuantity: 1,
    rating: 4.5,
    sourceUrl: '',
    imageUrl: '',
  );
  const item = CartItem(
    stroller: stroller,
    color: 'black',
    quantity: 2,
    isAddedByAssistant: false,
  );

  CartBloc createBloc() =>
      CartBloc(cartRepository, shopRepository, const CartVMMapper(), OpenTabMediator());

  setUp(() {
    setUpTestInfrastructure();
    cartRepository = MockCartRepository();
    shopRepository = MockShopRepository();
    when(() => cartRepository.watchItems()).thenAnswer((_) => Stream.value([item]));
    when(() => shopRepository.fetchShop()).thenAnswer((_) async => shop);
  });

  group('init', () {
    blocTest<CartBloc, CartState>(
      'loads shop and emits loaded VM with first delivery selected',
      build: createBloc,
      act: (bloc) => bloc.add(const .init()),
      verify: (bloc) {
        final state = bloc.state;
        expect(state, isA<CartLoadedState>());
        expect(state.data.lines.single.sumByn, 200);
        expect(state.data.itemsCount, 2);
        expect(state.data.deliveryOptions.first.isSelected, isTrue);
        expect(state.data.shippingByn, 15);
        expect(state.data.totalByn, 215);
      },
    );

    blocTest<CartBloc, CartState>(
      'emits error state when shop loading fails',
      setUp: () => when(() => shopRepository.fetchShop()).thenThrow(const NoConnectionException()),
      build: createBloc,
      act: (bloc) => bloc.add(const .init()),
      verify: (bloc) => expect(bloc.state, isA<CartErrorState>()),
    );
  });

  group('deliverySelected', () {
    blocTest<CartBloc, CartState>(
      'recomputes shipping for selected option',
      build: createBloc,
      act: (bloc) => bloc
        ..add(const .init())
        ..add(const .deliverySelected(method: 'pickup')),
      verify: (bloc) {
        expect(bloc.state.data.shippingByn, 0);
        expect(bloc.state.data.totalByn, 200);
      },
    );
  });

  group('quantityChanged', () {
    blocTest<CartBloc, CartState>(
      'delegates to repository',
      setUp: () => when(
        () => cartRepository.changeQuantity(item: item, delta: 1),
      ).thenReturn(null),
      build: createBloc,
      act: (bloc) async {
        bloc.add(const .init());
        await bloc.stream.firstWhere((state) => state is CartLoadedState);
        bloc.add(const .quantityChanged(strollerId: 's1', color: 'black', delta: 1));
      },
      verify: (_) => verify(() => cartRepository.changeQuantity(item: item, delta: 1)).called(1),
    );
  });

  group('checkoutPressed', () {
    blocTest<CartBloc, CartState>(
      'clears cart and shows toast',
      setUp: () {
        when(() => cartRepository.clear()).thenReturn(null);
        when(() => testToastService.showSuccess(any())).thenReturn(null);
      },
      build: createBloc,
      act: (bloc) => bloc.add(const .checkoutPressed()),
      verify: (_) {
        verify(() => cartRepository.clear()).called(1);
        verify(() => testToastService.showSuccess(appStrings.cartCheckoutDone)).called(1);
      },
    );
  });
}
