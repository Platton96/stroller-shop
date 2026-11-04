// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 's.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class SRu extends S {
  SRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Колясочная';

  @override
  String get tabCatalog => 'Каталог';

  @override
  String get tabAssistant => 'Помощник';

  @override
  String get tabCart => 'Корзина';

  @override
  String get tabShop => 'Магазин';

  @override
  String get cartTitle => 'Корзина';

  @override
  String cartItemsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count товара',
      many: '$count товаров',
      few: '$count товара',
      one: '$count товар',
    );
    return '$_temp0';
  }

  @override
  String get cartAddedByAssistant => 'добавил помощник';

  @override
  String cartDecreaseLabel(String name) {
    return 'Убрать одну: $name';
  }

  @override
  String cartIncreaseLabel(String name) {
    return 'Добавить ещё: $name';
  }

  @override
  String get cartDeliveryTitle => 'Получение';

  @override
  String get cartDeliveryFree => 'бесплатно';

  @override
  String cartDeliveryFreeFrom(int amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'бесплатно от $amountString BYN';
  }

  @override
  String get cartGoodsLabel => 'Товары';

  @override
  String get cartShippingLabel => 'Доставка';

  @override
  String get cartTotalLabel => 'Итого';

  @override
  String get cartCheckout => 'Оформить заказ';

  @override
  String get cartCheckoutDone => 'Заказ оформлен — это демо, мы с вами не свяжемся';

  @override
  String get cartEmpty => 'Корзина пуста';

  @override
  String get cartGoToCatalog => 'Перейти в каталог';

  @override
  String get shopDeliveryTitle => 'Доставка';

  @override
  String get shopDeliveryFree => 'бесплатно';

  @override
  String shopDeliveryFreeFrom(int amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return 'бесплатно от $amountString BYN';
  }

  @override
  String get shopPaymentTitle => 'Оплата';

  @override
  String get shopReturnsTitle => 'Возврат';

  @override
  String get shopWarrantyTitle => 'Гарантия';

  @override
  String get shopTestDriveTitle => 'Тест-драйв';

  @override
  String get commonRetry => 'Повторить';

  @override
  String get commonErrorTitle => 'Что-то пошло не так';

  @override
  String get errorNoConnection => 'Нет связи с сервером. Проверьте интернет и попробуйте ещё раз.';

  @override
  String get errorNotFound => 'Ничего не нашлось';

  @override
  String errorServer(int statusCode) {
    return 'Сервер ответил ошибкой ($statusCode)';
  }

  @override
  String get errorUnexpected => 'Неожиданная ошибка';

  @override
  String priceByn(int amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return '$amountString BYN';
  }

  @override
  String priceApproxByn(int amount) {
    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String amountString = amountNumberFormat.format(amount);

    return '≈ $amountString BYN';
  }

  @override
  String weightKg(double weight) {
    final intl.NumberFormat weightNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String weightString = weightNumberFormat.format(weight);

    return '$weightString кг';
  }

  @override
  String get ageFromBirth => 'с рождения';

  @override
  String ageFromMonths(int months) {
    return 'с $months мес';
  }

  @override
  String get metaSeparator => ' · ';

  @override
  String get cabinLuggageBadge => 'ручная кладь';

  @override
  String catalogCity(String city) {
    return '$city · самовывоз сегодня';
  }

  @override
  String get catalogSearchHint => 'Поиск по моделям';

  @override
  String get catalogAssistantTitle => 'Не знаете, какую выбрать?';

  @override
  String get catalogAssistantSubtitle =>
      'Расскажите о ребёнке и прогулках — помощник подберёт и положит в корзину';

  @override
  String get catalogAllTypes => 'Все';

  @override
  String get catalogEmpty => 'По запросу ничего не нашлось';

  @override
  String catalogFoundCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count модели',
      many: '$count моделей',
      few: '$count модели',
      one: '$count модель',
    );
    return '$_temp0';
  }

  @override
  String get catalogInStockOnly => 'В наличии';

  @override
  String get sortTitle => 'Сортировка';

  @override
  String get sortRelevance => 'по умолчанию';

  @override
  String get sortPriceAsc => 'сначала дешевле';

  @override
  String get sortPriceDesc => 'сначала дороже';

  @override
  String get sortRating => 'по рейтингу';

  @override
  String get sortWeight => 'по весу';

  @override
  String cartAdded(String name) {
    return '$name — в корзине';
  }

  @override
  String cartButtonLabel(int count) {
    return 'Корзина, товаров: $count';
  }

  @override
  String addToCartLabel(String name) {
    return 'В корзину: $name';
  }

  @override
  String get detailsBack => 'Назад';

  @override
  String detailsInStock(int count) {
    return 'в наличии · $count шт';
  }

  @override
  String get detailsOutOfStock => 'под заказ';

  @override
  String detailsColor(String color) {
    return 'Цвет: $color';
  }

  @override
  String get detailsAddToCart => 'В корзину';

  @override
  String get detailsAskAssistant => 'Спросить помощника об этой модели';

  @override
  String get detailsFeatures => 'Особенности';

  @override
  String get detailsSource => 'Характеристики — с сайта производителя';

  @override
  String get specWeight => 'Вес';

  @override
  String get specAge => 'Возраст';

  @override
  String get specMaxLoad => 'Нагрузка';

  @override
  String get specWheels => 'Колёса';

  @override
  String get specSuspension => 'Амортизация';

  @override
  String get specSeat => 'Блок';

  @override
  String get specFolded => 'В сложенном виде';

  @override
  String specAgeRange(int from, int to) {
    return '$from–$to мес';
  }

  @override
  String specAgeFrom(int from) {
    return 'от $from мес';
  }

  @override
  String specMaxLoadValue(double weight) {
    final intl.NumberFormat weightNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String weightString = weightNumberFormat.format(weight);

    return 'до $weightString кг';
  }

  @override
  String specFoldedValue(double length, double width, double height) {
    final intl.NumberFormat lengthNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String lengthString = lengthNumberFormat.format(length);
    final intl.NumberFormat widthNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String widthString = widthNumberFormat.format(width);
    final intl.NumberFormat heightNumberFormat = intl.NumberFormat.decimalPattern(localeName);
    final String heightString = heightNumberFormat.format(height);

    return '$lengthString×$widthString×$heightString см';
  }

  @override
  String get wheelsFoam => 'без проколов';

  @override
  String get wheelsInflatable => 'надувные';

  @override
  String get wheelsPlastic => 'пластиковые';

  @override
  String wheelsOther(String value) {
    return '$value';
  }

  @override
  String get suspensionAllWheels => 'все колёса';

  @override
  String get seatReversible => 'в 2 стороны';

  @override
  String get seatForwardOnly => 'по ходу';

  @override
  String get strollerTypeModular2in1 => 'Модульная 2 в 1';

  @override
  String get strollerTypeModular3in1 => 'Модульная 3 в 1';

  @override
  String get strollerTypeStroll => 'Прогулочная';

  @override
  String get strollerTypeTravel => 'Для путешествий';

  @override
  String get strollerTypeCane => 'Трость';

  @override
  String get strollerTypeTwin => 'Для двойни';

  @override
  String get strollerTypeJogger => 'Спортивная';

  @override
  String get strollerTypeUndefined => 'Коляска';
}
