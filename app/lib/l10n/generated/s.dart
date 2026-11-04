import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 's_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/s.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ru')];

  /// No description provided for @appTitle.
  ///
  /// In ru, this message translates to:
  /// **'Колясочная'**
  String get appTitle;

  /// No description provided for @tabCatalog.
  ///
  /// In ru, this message translates to:
  /// **'Каталог'**
  String get tabCatalog;

  /// No description provided for @tabAssistant.
  ///
  /// In ru, this message translates to:
  /// **'Помощник'**
  String get tabAssistant;

  /// No description provided for @tabCart.
  ///
  /// In ru, this message translates to:
  /// **'Корзина'**
  String get tabCart;

  /// No description provided for @tabShop.
  ///
  /// In ru, this message translates to:
  /// **'Магазин'**
  String get tabShop;

  /// No description provided for @cartTitle.
  ///
  /// In ru, this message translates to:
  /// **'Корзина'**
  String get cartTitle;

  /// No description provided for @cartItemsCount.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} товар} few{{count} товара} many{{count} товаров} other{{count} товара}}'**
  String cartItemsCount(int count);

  /// No description provided for @cartAddedByAssistant.
  ///
  /// In ru, this message translates to:
  /// **'добавил помощник'**
  String get cartAddedByAssistant;

  /// No description provided for @cartDecreaseLabel.
  ///
  /// In ru, this message translates to:
  /// **'Убрать одну: {name}'**
  String cartDecreaseLabel(String name);

  /// No description provided for @cartIncreaseLabel.
  ///
  /// In ru, this message translates to:
  /// **'Добавить ещё: {name}'**
  String cartIncreaseLabel(String name);

  /// No description provided for @cartDeliveryTitle.
  ///
  /// In ru, this message translates to:
  /// **'Получение'**
  String get cartDeliveryTitle;

  /// No description provided for @cartDeliveryFree.
  ///
  /// In ru, this message translates to:
  /// **'бесплатно'**
  String get cartDeliveryFree;

  /// No description provided for @cartDeliveryFreeFrom.
  ///
  /// In ru, this message translates to:
  /// **'бесплатно от {amount} BYN'**
  String cartDeliveryFreeFrom(int amount);

  /// No description provided for @cartGoodsLabel.
  ///
  /// In ru, this message translates to:
  /// **'Товары'**
  String get cartGoodsLabel;

  /// No description provided for @cartShippingLabel.
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get cartShippingLabel;

  /// No description provided for @cartTotalLabel.
  ///
  /// In ru, this message translates to:
  /// **'Итого'**
  String get cartTotalLabel;

  /// No description provided for @cartCheckout.
  ///
  /// In ru, this message translates to:
  /// **'Оформить заказ'**
  String get cartCheckout;

  /// No description provided for @cartCheckoutDone.
  ///
  /// In ru, this message translates to:
  /// **'Заказ оформлен — это демо, мы с вами не свяжемся'**
  String get cartCheckoutDone;

  /// No description provided for @cartEmpty.
  ///
  /// In ru, this message translates to:
  /// **'Корзина пуста'**
  String get cartEmpty;

  /// No description provided for @cartGoToCatalog.
  ///
  /// In ru, this message translates to:
  /// **'Перейти в каталог'**
  String get cartGoToCatalog;

  /// No description provided for @shopDeliveryTitle.
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get shopDeliveryTitle;

  /// No description provided for @shopDeliveryFree.
  ///
  /// In ru, this message translates to:
  /// **'бесплатно'**
  String get shopDeliveryFree;

  /// No description provided for @shopDeliveryFreeFrom.
  ///
  /// In ru, this message translates to:
  /// **'бесплатно от {amount} BYN'**
  String shopDeliveryFreeFrom(int amount);

  /// No description provided for @shopPaymentTitle.
  ///
  /// In ru, this message translates to:
  /// **'Оплата'**
  String get shopPaymentTitle;

  /// No description provided for @shopReturnsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Возврат'**
  String get shopReturnsTitle;

  /// No description provided for @shopWarrantyTitle.
  ///
  /// In ru, this message translates to:
  /// **'Гарантия'**
  String get shopWarrantyTitle;

  /// No description provided for @shopTestDriveTitle.
  ///
  /// In ru, this message translates to:
  /// **'Тест-драйв'**
  String get shopTestDriveTitle;

  /// No description provided for @assistantTitle.
  ///
  /// In ru, this message translates to:
  /// **'Помощник'**
  String get assistantTitle;

  /// No description provided for @assistantSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'подбирает по каталогу магазина'**
  String get assistantSubtitle;

  /// No description provided for @assistantGreeting.
  ///
  /// In ru, this message translates to:
  /// **'Здравствуйте! Расскажите, для кого коляска и где будете гулять — подберу из нашего каталога.'**
  String get assistantGreeting;

  /// No description provided for @assistantStarterTravel.
  ///
  /// In ru, this message translates to:
  /// **'Лёгкая для путешествий'**
  String get assistantStarterTravel;

  /// No description provided for @assistantStarterWinter.
  ///
  /// In ru, this message translates to:
  /// **'Для зимы и бездорожья'**
  String get assistantStarterWinter;

  /// No description provided for @assistantStarterBudget.
  ///
  /// In ru, this message translates to:
  /// **'До 1500 BYN'**
  String get assistantStarterBudget;

  /// No description provided for @assistantInputHint.
  ///
  /// In ru, this message translates to:
  /// **'Напишите, что ищете…'**
  String get assistantInputHint;

  /// No description provided for @assistantSendLabel.
  ///
  /// In ru, this message translates to:
  /// **'Отправить'**
  String get assistantSendLabel;

  /// No description provided for @assistantDetails.
  ///
  /// In ru, this message translates to:
  /// **'Подробнее'**
  String get assistantDetails;

  /// No description provided for @assistantTypingLabel.
  ///
  /// In ru, this message translates to:
  /// **'Помощник печатает'**
  String get assistantTypingLabel;

  /// No description provided for @assistantCartAddedTitle.
  ///
  /// In ru, this message translates to:
  /// **'Добавил в корзину'**
  String get assistantCartAddedTitle;

  /// No description provided for @assistantCartAddedLine.
  ///
  /// In ru, this message translates to:
  /// **'{name} · {color} · {price}'**
  String assistantCartAddedLine(String name, String color, String price);

  /// No description provided for @assistantOpenCart.
  ///
  /// In ru, this message translates to:
  /// **'Открыть корзину'**
  String get assistantOpenCart;

  /// No description provided for @assistantAskAboutStroller.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите подробнее про {name}'**
  String assistantAskAboutStroller(String name);

  /// No description provided for @commonRetry.
  ///
  /// In ru, this message translates to:
  /// **'Повторить'**
  String get commonRetry;

  /// No description provided for @commonErrorTitle.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так'**
  String get commonErrorTitle;

  /// No description provided for @errorNoConnection.
  ///
  /// In ru, this message translates to:
  /// **'Нет связи с сервером. Проверьте интернет и попробуйте ещё раз.'**
  String get errorNoConnection;

  /// No description provided for @errorNotFound.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не нашлось'**
  String get errorNotFound;

  /// No description provided for @errorServer.
  ///
  /// In ru, this message translates to:
  /// **'Сервер ответил ошибкой ({statusCode})'**
  String errorServer(int statusCode);

  /// No description provided for @errorUnavailable.
  ///
  /// In ru, this message translates to:
  /// **'Сервис сейчас недоступен. Попробуйте чуть позже.'**
  String get errorUnavailable;

  /// No description provided for @errorUnexpected.
  ///
  /// In ru, this message translates to:
  /// **'Неожиданная ошибка'**
  String get errorUnexpected;

  /// No description provided for @priceByn.
  ///
  /// In ru, this message translates to:
  /// **'{amount} BYN'**
  String priceByn(int amount);

  /// No description provided for @priceApproxByn.
  ///
  /// In ru, this message translates to:
  /// **'≈ {amount} BYN'**
  String priceApproxByn(int amount);

  /// No description provided for @weightKg.
  ///
  /// In ru, this message translates to:
  /// **'{weight} кг'**
  String weightKg(double weight);

  /// No description provided for @ageFromBirth.
  ///
  /// In ru, this message translates to:
  /// **'с рождения'**
  String get ageFromBirth;

  /// No description provided for @ageFromMonths.
  ///
  /// In ru, this message translates to:
  /// **'с {months} мес'**
  String ageFromMonths(int months);

  /// No description provided for @metaSeparator.
  ///
  /// In ru, this message translates to:
  /// **' · '**
  String get metaSeparator;

  /// No description provided for @cabinLuggageBadge.
  ///
  /// In ru, this message translates to:
  /// **'ручная кладь'**
  String get cabinLuggageBadge;

  /// No description provided for @catalogCity.
  ///
  /// In ru, this message translates to:
  /// **'{city} · самовывоз сегодня'**
  String catalogCity(String city);

  /// No description provided for @catalogSearchHint.
  ///
  /// In ru, this message translates to:
  /// **'Поиск по моделям'**
  String get catalogSearchHint;

  /// No description provided for @catalogAssistantTitle.
  ///
  /// In ru, this message translates to:
  /// **'Не знаете, какую выбрать?'**
  String get catalogAssistantTitle;

  /// No description provided for @catalogAssistantSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите о ребёнке и прогулках — помощник подберёт и положит в корзину'**
  String get catalogAssistantSubtitle;

  /// No description provided for @catalogAllTypes.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get catalogAllTypes;

  /// No description provided for @catalogEmpty.
  ///
  /// In ru, this message translates to:
  /// **'По запросу ничего не нашлось'**
  String get catalogEmpty;

  /// No description provided for @catalogFoundCount.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} модель} few{{count} модели} many{{count} моделей} other{{count} модели}}'**
  String catalogFoundCount(int count);

  /// No description provided for @catalogInStockOnly.
  ///
  /// In ru, this message translates to:
  /// **'В наличии'**
  String get catalogInStockOnly;

  /// No description provided for @sortTitle.
  ///
  /// In ru, this message translates to:
  /// **'Сортировка'**
  String get sortTitle;

  /// No description provided for @sortRelevance.
  ///
  /// In ru, this message translates to:
  /// **'по умолчанию'**
  String get sortRelevance;

  /// No description provided for @sortPriceAsc.
  ///
  /// In ru, this message translates to:
  /// **'сначала дешевле'**
  String get sortPriceAsc;

  /// No description provided for @sortPriceDesc.
  ///
  /// In ru, this message translates to:
  /// **'сначала дороже'**
  String get sortPriceDesc;

  /// No description provided for @sortRating.
  ///
  /// In ru, this message translates to:
  /// **'по рейтингу'**
  String get sortRating;

  /// No description provided for @sortWeight.
  ///
  /// In ru, this message translates to:
  /// **'по весу'**
  String get sortWeight;

  /// No description provided for @cartAdded.
  ///
  /// In ru, this message translates to:
  /// **'{name} — в корзине'**
  String cartAdded(String name);

  /// No description provided for @cartButtonLabel.
  ///
  /// In ru, this message translates to:
  /// **'Корзина, товаров: {count}'**
  String cartButtonLabel(int count);

  /// No description provided for @addToCartLabel.
  ///
  /// In ru, this message translates to:
  /// **'В корзину: {name}'**
  String addToCartLabel(String name);

  /// No description provided for @detailsBack.
  ///
  /// In ru, this message translates to:
  /// **'Назад'**
  String get detailsBack;

  /// No description provided for @detailsInStock.
  ///
  /// In ru, this message translates to:
  /// **'в наличии · {count} шт'**
  String detailsInStock(int count);

  /// No description provided for @detailsOutOfStock.
  ///
  /// In ru, this message translates to:
  /// **'под заказ'**
  String get detailsOutOfStock;

  /// No description provided for @detailsColor.
  ///
  /// In ru, this message translates to:
  /// **'Цвет: {color}'**
  String detailsColor(String color);

  /// No description provided for @detailsAddToCart.
  ///
  /// In ru, this message translates to:
  /// **'В корзину'**
  String get detailsAddToCart;

  /// No description provided for @detailsAskAssistant.
  ///
  /// In ru, this message translates to:
  /// **'Спросить помощника об этой модели'**
  String get detailsAskAssistant;

  /// No description provided for @detailsFeatures.
  ///
  /// In ru, this message translates to:
  /// **'Особенности'**
  String get detailsFeatures;

  /// No description provided for @detailsSource.
  ///
  /// In ru, this message translates to:
  /// **'Характеристики — с сайта производителя'**
  String get detailsSource;

  /// No description provided for @specWeight.
  ///
  /// In ru, this message translates to:
  /// **'Вес'**
  String get specWeight;

  /// No description provided for @specAge.
  ///
  /// In ru, this message translates to:
  /// **'Возраст'**
  String get specAge;

  /// No description provided for @specMaxLoad.
  ///
  /// In ru, this message translates to:
  /// **'Нагрузка'**
  String get specMaxLoad;

  /// No description provided for @specWheels.
  ///
  /// In ru, this message translates to:
  /// **'Колёса'**
  String get specWheels;

  /// No description provided for @specSuspension.
  ///
  /// In ru, this message translates to:
  /// **'Амортизация'**
  String get specSuspension;

  /// No description provided for @specSeat.
  ///
  /// In ru, this message translates to:
  /// **'Блок'**
  String get specSeat;

  /// No description provided for @specFolded.
  ///
  /// In ru, this message translates to:
  /// **'В сложенном виде'**
  String get specFolded;

  /// No description provided for @specAgeRange.
  ///
  /// In ru, this message translates to:
  /// **'{from}–{to} мес'**
  String specAgeRange(int from, int to);

  /// No description provided for @specAgeFrom.
  ///
  /// In ru, this message translates to:
  /// **'от {from} мес'**
  String specAgeFrom(int from);

  /// No description provided for @specMaxLoadValue.
  ///
  /// In ru, this message translates to:
  /// **'до {weight} кг'**
  String specMaxLoadValue(double weight);

  /// No description provided for @specFoldedValue.
  ///
  /// In ru, this message translates to:
  /// **'{length}×{width}×{height} см'**
  String specFoldedValue(double length, double width, double height);

  /// No description provided for @wheelsFoam.
  ///
  /// In ru, this message translates to:
  /// **'без проколов'**
  String get wheelsFoam;

  /// No description provided for @wheelsInflatable.
  ///
  /// In ru, this message translates to:
  /// **'надувные'**
  String get wheelsInflatable;

  /// No description provided for @wheelsPlastic.
  ///
  /// In ru, this message translates to:
  /// **'пластиковые'**
  String get wheelsPlastic;

  /// No description provided for @wheelsOther.
  ///
  /// In ru, this message translates to:
  /// **'{value}'**
  String wheelsOther(String value);

  /// No description provided for @suspensionAllWheels.
  ///
  /// In ru, this message translates to:
  /// **'все колёса'**
  String get suspensionAllWheels;

  /// No description provided for @seatReversible.
  ///
  /// In ru, this message translates to:
  /// **'в 2 стороны'**
  String get seatReversible;

  /// No description provided for @seatForwardOnly.
  ///
  /// In ru, this message translates to:
  /// **'по ходу'**
  String get seatForwardOnly;

  /// No description provided for @strollerTypeModular2in1.
  ///
  /// In ru, this message translates to:
  /// **'Модульная 2 в 1'**
  String get strollerTypeModular2in1;

  /// No description provided for @strollerTypeModular3in1.
  ///
  /// In ru, this message translates to:
  /// **'Модульная 3 в 1'**
  String get strollerTypeModular3in1;

  /// No description provided for @strollerTypeStroll.
  ///
  /// In ru, this message translates to:
  /// **'Прогулочная'**
  String get strollerTypeStroll;

  /// No description provided for @strollerTypeTravel.
  ///
  /// In ru, this message translates to:
  /// **'Для путешествий'**
  String get strollerTypeTravel;

  /// No description provided for @strollerTypeCane.
  ///
  /// In ru, this message translates to:
  /// **'Трость'**
  String get strollerTypeCane;

  /// No description provided for @strollerTypeTwin.
  ///
  /// In ru, this message translates to:
  /// **'Для двойни'**
  String get strollerTypeTwin;

  /// No description provided for @strollerTypeJogger.
  ///
  /// In ru, this message translates to:
  /// **'Спортивная'**
  String get strollerTypeJogger;

  /// No description provided for @strollerTypeUndefined.
  ///
  /// In ru, this message translates to:
  /// **'Коляска'**
  String get strollerTypeUndefined;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru':
      return SRu();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
