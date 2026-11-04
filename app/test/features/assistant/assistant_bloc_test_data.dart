part of 'assistant_bloc_test.dart';

const _stroller = Stroller(
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

const _reply = ChatReply(
  conversationId: 'c1',
  text: 'Вот варианты',
  strollers: [_stroller],
  actions: [],
  searches: [AssistantSearch(summary: 'до 1500 BYN', found: 1)],
  suggestions: ['Подробнее'],
);

const _textReply = ChatReply(
  conversationId: 'c1',
  text: 'Готово',
  strollers: [],
  actions: [],
  searches: [],
  suggestions: [],
);

const _addToCartReply = ChatReply(
  conversationId: 'c1',
  text: 'Добавил',
  strollers: [_stroller],
  actions: [AssistantAction.addToCart(strollerId: 's1', color: 'black')],
  searches: [],
  suggestions: [],
);

const _greeting = ChatItemVM.greeting();
const _typing = ChatItemVM.typing();
const _userItem = ChatItemVM.userMessage(text: 'Нужна лёгкая');

Matcher _hasItems(List<ChatItemVM> items, {bool isSending = false}) => isA<AssistantReadyState>()
    .having((state) => state.data.reversedItems, 'reversedItems', items)
    .having((state) => state.data.isSending, 'isSending', isSending);
