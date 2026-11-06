import 'package:bloc_test/bloc_test.dart';
import 'package:stroller_shop/core/exceptions/app_exception.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/features/assistant/bloc/assistant_bloc.dart';
import 'package:stroller_shop/features/assistant/ui_models/assistant_vm.dart';
import 'package:stroller_shop/features/assistant/ui_models/chat_item_vm.dart';
import 'package:stroller_shop/features/cart/bloc/cart_bloc.dart';
import 'package:stroller_shop/features/cart/ui_models/cart_line_vm.dart';
import 'package:stroller_shop/features/cart/ui_models/cart_vm.dart';
import 'package:stroller_shop/features/cart/ui_models/delivery_option_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/bloc/catalog_bloc.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/catalog_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/stroller_card_vm.dart';
import 'package:stroller_shop/features/catalog/catalog/ui_models/type_chip_vm.dart';
import 'package:stroller_shop/features/catalog/sort_sheet/bloc/sort_sheet_bloc.dart';
import 'package:stroller_shop/features/shop/bloc/shop_bloc.dart';
import 'package:stroller_shop/features/shop/ui_models/shop_delivery_vm.dart';
import 'package:stroller_shop/features/shop/ui_models/shop_vm.dart';
import 'package:stroller_shop/features/stroller_details/bloc/stroller_details_bloc.dart';
import 'package:stroller_shop/features/stroller_details/ui_models/spec_vm.dart';
import 'package:stroller_shop/features/stroller_details/ui_models/stroller_details_vm.dart';
import 'package:stroller_shop/features/tabs/bloc/tabs_bloc.dart';

class MockCatalogBloc extends MockBloc<CatalogEvent, CatalogState> implements CatalogBloc {}

class MockSortSheetBloc extends MockBloc<SortSheetEvent, SortSheetState> implements SortSheetBloc {}

class MockStrollerDetailsBloc extends MockBloc<StrollerDetailsEvent, StrollerDetailsState>
    implements StrollerDetailsBloc {}

class MockCartBloc extends MockBloc<CartEvent, CartState> implements CartBloc {}

class MockShopBloc extends MockBloc<ShopEvent, ShopState> implements ShopBloc {}

class MockAssistantBloc extends MockBloc<AssistantEvent, AssistantState> implements AssistantBloc {}

class MockTabsBloc extends MockBloc<TabsEvent, TabsState> implements TabsBloc {}

const goldenException = AppException.noConnection();

const goldenFoxCard = StrollerCardVM(
  id: 'bugaboo-fox-5',
  brand: 'Bugaboo',
  model: 'Fox 5',
  priceByn: 4890,
  isPriceApproximate: false,
  weightKg: 11.9,
  ageFromMonths: 0,
  isCabinLuggage: false,
  imageUrl: '',
);

const goldenYoyoCard = StrollerCardVM(
  id: 'babyzen-yoyo-3',
  brand: 'Babyzen',
  model: 'YOYO³',
  priceByn: 2150,
  isPriceApproximate: true,
  weightKg: 6.6,
  ageFromMonths: 6,
  isCabinLuggage: true,
  imageUrl: '',
);

const goldenPriamCard = StrollerCardVM(
  id: 'cybex-priam',
  brand: 'Cybex',
  model: 'Priam 4',
  priceByn: 5320,
  isPriceApproximate: false,
  weightKg: 13.2,
  ageFromMonths: 0,
  isCabinLuggage: false,
  imageUrl: '',
);

const goldenAerCard = StrollerCardVM(
  id: 'joolz-aer-plus',
  brand: 'Joolz',
  model: 'Aer+',
  priceByn: 1890,
  isPriceApproximate: false,
  weightKg: null,
  ageFromMonths: 6,
  isCabinLuggage: true,
  imageUrl: '',
);

const goldenCards = [goldenFoxCard, goldenYoyoCard, goldenPriamCard, goldenAerCard];

const goldenCatalogVM = CatalogVM(
  city: 'Минск',
  sort: .relevance,
  typeChips: [
    TypeChipVM(type: null, label: 'Все', count: 24, isSelected: true),
    TypeChipVM(type: .modular2in1, label: '2 в 1', count: 9, isSelected: false),
    TypeChipVM(type: .stroll, label: 'Прогулочные', count: 8, isSelected: false),
    TypeChipVM(type: .travel, label: 'Для путешествий', count: 7, isSelected: false),
  ],
  cards: goldenCards,
  totalCount: 24,
  hasMore: true,
  cartCount: 2,
);

const goldenDetailsVM = StrollerDetailsVM(
  brand: 'Bugaboo',
  model: 'Fox 5',
  type: .modular2in1,
  rating: 4.8,
  priceByn: 4890,
  isPriceApproximate: false,
  isInStock: true,
  stockQuantity: 3,
  colors: ['Black', 'Grey Melange', 'Forest Green'],
  selectedColor: 'Black',
  specs: [
    SpecVM.weight(kg: 11.9),
    SpecVM.age(fromMonths: 0, toMonths: 48),
    SpecVM.maxLoad(kg: 22),
    SpecVM.wheels(kind: .foam, rawValue: 'foam'),
    SpecVM.allWheelSuspension(),
    SpecVM.seat(isReversible: true),
    SpecVM.folded(lengthCm: 86, widthCm: 58, heightCm: 34),
  ],
  description:
      'Универсальная коляска для города и бездорожья: люлька с рождения, прогулочный блок '
      'до четырёх лет, полная амортизация и складывание одной рукой.',
  features: ['Люлька с рождения', 'Складывается одной рукой', 'Регулируемая ручка'],
  imageUrl: '',
);

const goldenCartVM = CartVM(
  lines: [
    CartLineVM(
      strollerId: 'bugaboo-fox-5',
      color: 'black',
      name: 'Bugaboo Fox 5',
      colorName: 'Black',
      imageUrl: '',
      quantity: 1,
      sumByn: 4890,
      isAddedByAssistant: false,
    ),
    CartLineVM(
      strollerId: 'babyzen-yoyo-3',
      color: 'stone',
      name: 'Babyzen YOYO³',
      colorName: 'Stone',
      imageUrl: '',
      quantity: 2,
      sumByn: 4300,
      isAddedByAssistant: true,
    ),
  ],
  deliveryOptions: [
    DeliveryOptionVM(
      method: 'courier',
      title: 'Курьер по Минску',
      eta: '1–2 дня',
      freeFromByn: 1000,
      costByn: 0,
      isSelected: true,
    ),
    DeliveryOptionVM(
      method: 'pickup',
      title: 'Самовывоз из шоурума',
      eta: 'Сегодня',
      freeFromByn: null,
      costByn: 0,
      isSelected: false,
    ),
    DeliveryOptionVM(
      method: 'post',
      title: 'Европочта',
      eta: '2–4 дня',
      freeFromByn: null,
      costByn: 15,
      isSelected: false,
    ),
  ],
  itemsCount: 3,
  goodsTotalByn: 9190,
  shippingByn: 0,
  totalByn: 9190,
  isEmpty: false,
);

const goldenEmptyCartVM = CartVM(
  lines: [],
  deliveryOptions: [],
  itemsCount: 0,
  goodsTotalByn: 0,
  shippingByn: 0,
  totalByn: 0,
  isEmpty: true,
);

const goldenShopVM = ShopVM(
  name: 'Колясочная',
  tagline: 'Коляски для города, путешествий и бездорожья',
  address: 'Минск, пр-т Победителей, 9',
  phone: '+375 29 000-00-00',
  workingHours: 'Ежедневно 10:00–21:00',
  delivery: [
    ShopDeliveryVM(title: 'Курьер по Минску', eta: '1–2 дня', priceByn: 10, freeFromByn: 1000),
    ShopDeliveryVM(title: 'Самовывоз', eta: 'Сегодня', priceByn: 0, freeFromByn: null),
  ],
  payment: ['Наличными', 'Картой при получении', 'Рассрочка'],
  returns: '14 дней на возврат, если коляска не подошла.',
  warranty: 'Официальная гарантия производителя от 1 года.',
  testDrive: 'Любую коляску можно покатать в шоуруме.',
  disclaimer: 'Демо-магазин: заказы не обрабатываются.',
);

const goldenGreetingVM = AssistantVM(
  reversedItems: [ChatItemVM.greeting()],
  suggestions: ['Лёгкая для путешествий', 'Для зимы и бездорожья', 'До 1500 BYN'],
  isSending: false,
  cartCount: 0,
);

const goldenConversationVM = AssistantVM(
  reversedItems: [
    ChatItemVM.cartAdded(
      name: 'Babyzen YOYO³',
      color: 'Stone',
      priceByn: 2150,
      isPriceApproximate: true,
    ),
    ChatItemVM.strollerCards(cards: [goldenYoyoCard, goldenAerCard]),
    ChatItemVM.assistantMessage(
      text: 'Для самолёта подойдут две лёгкие модели — обе проходят как ручная кладь.',
    ),
    ChatItemVM.searchNote(summary: 'Прогулочные до 7 кг'),
    ChatItemVM.userMessage(text: 'Нужна лёгкая коляска для перелётов'),
    ChatItemVM.greeting(),
  ],
  suggestions: ['Сравни их', 'А есть дешевле?'],
  isSending: false,
  cartCount: 1,
);

const goldenSendingVM = AssistantVM(
  reversedItems: [
    ChatItemVM.typing(),
    ChatItemVM.userMessage(text: 'Что взять для зимы?'),
    ChatItemVM.greeting(),
  ],
  suggestions: [],
  isSending: true,
  cartCount: 0,
);

const goldenErrorChatVM = AssistantVM(
  reversedItems: [
    ChatItemVM.error(exception: goldenException),
    ChatItemVM.userMessage(text: 'Что взять для зимы?'),
    ChatItemVM.greeting(),
  ],
  suggestions: [],
  isSending: false,
  cartCount: 0,
);

const goldenSelectedSort = StrollerSort.priceAsc;
