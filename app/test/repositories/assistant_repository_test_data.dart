part of 'assistant_repository_test.dart';

final _response = ChatResponseObj.fromJson(const {
  'conversation_id': 'c1',
  'text': 'Вот варианты',
  'strollers': [
    {'id': 's1', 'brand': 'Bugaboo', 'model': 'Fox', 'price_byn': 1200},
  ],
  'actions': [
    {'type': 'add_to_cart', 'stroller_id': 's1', 'color': 'Black'},
    {'type': 'something_new'},
  ],
  'searches': [
    {'summary': 'до 1500 BYN', 'found': 1},
  ],
  'suggestions': ['Подробнее'],
});

const _cartItem = CartItem(
  stroller: Stroller(
    id: 's1',
    brand: 'Bugaboo',
    model: 'Fox',
    type: .stroll,
    description: '',
    priceByn: 1200,
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
    colors: ['Black'],
    features: [],
    isInStock: true,
    stockQuantity: 1,
    rating: 4.5,
    sourceUrl: '',
    imageUrl: '',
  ),
  color: 'Black',
  quantity: 2,
  isAddedByAssistant: false,
);
