import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
  ];

  /// The conventional newborn programmer greeting
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @signin.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signin;

  /// No description provided for @signout.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signout;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Ýyndam Service'**
  String get appTitle;

  /// No description provided for @servicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get servicesTitle;

  /// No description provided for @servicesDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Service Details'**
  String get servicesDetailsTitle;

  /// No description provided for @servicesNoServiceLabel.
  ///
  /// In en, this message translates to:
  /// **'No service'**
  String get servicesNoServiceLabel;

  /// No description provided for @productTitle.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get productTitle;

  /// No description provided for @productPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get productPriceLabel;

  /// No description provided for @productStockLabel.
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get productStockLabel;

  /// No description provided for @productCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get productCodeLabel;

  /// No description provided for @productBoxQuantityLabel.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get productBoxQuantityLabel;

  /// No description provided for @productBalanceLabel.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get productBalanceLabel;

  /// No description provided for @productBarcodeTextFieldLabel.
  ///
  /// In en, this message translates to:
  /// **'Barcode'**
  String get productBarcodeTextFieldLabel;

  /// No description provided for @productCodeTextFieldLabel.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get productCodeTextFieldLabel;

  /// No description provided for @productSearchProductButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Search product'**
  String get productSearchProductButtonLabel;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @barcodeScannerButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Barcode Scanner'**
  String get barcodeScannerButtonLabel;

  /// No description provided for @serviceDetailsProblemCardTitle.
  ///
  /// In en, this message translates to:
  /// **'PROBLEM'**
  String get serviceDetailsProblemCardTitle;

  /// No description provided for @serviceDetailsServiceNoLabel.
  ///
  /// In en, this message translates to:
  /// **'Service NO'**
  String get serviceDetailsServiceNoLabel;

  /// No description provided for @serviceDetailsAssignButtonText.
  ///
  /// In en, this message translates to:
  /// **'Assign ME'**
  String get serviceDetailsAssignButtonText;

  /// No description provided for @serviceDetailsCheckButtonText.
  ///
  /// In en, this message translates to:
  /// **'Check ME'**
  String get serviceDetailsCheckButtonText;

  /// No description provided for @serviceDetailsBackButtonText.
  ///
  /// In en, this message translates to:
  /// **'BACK'**
  String get serviceDetailsBackButtonText;

  /// No description provided for @serviceDetailsSolutionLabel.
  ///
  /// In en, this message translates to:
  /// **'SOLUTION'**
  String get serviceDetailsSolutionLabel;

  /// No description provided for @serviceDetailsOkButtonText.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get serviceDetailsOkButtonText;

  /// No description provided for @serviceDetailsSolveButtonText.
  ///
  /// In en, this message translates to:
  /// **'Solve'**
  String get serviceDetailsSolveButtonText;

  /// No description provided for @serviceDetailsSolutionTextfieldHintText.
  ///
  /// In en, this message translates to:
  /// **'Problem\'s solution'**
  String get serviceDetailsSolutionTextfieldHintText;

  /// No description provided for @servicesListLabel.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get servicesListLabel;

  /// No description provided for @signinUsernameLabel.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get signinUsernameLabel;

  /// No description provided for @signinPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signinPasswordLabel;

  /// No description provided for @cancelButtonCaption.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButtonCaption;

  /// No description provided for @okButtonCaption.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get okButtonCaption;

  /// No description provided for @signinButtonCaption.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signinButtonCaption;

  /// No description provided for @settingsLightModeLabel.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get settingsLightModeLabel;

  /// No description provided for @settingsDarkModeLabel.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get settingsDarkModeLabel;

  /// No description provided for @settingsSystemModeLabel.
  ///
  /// In en, this message translates to:
  /// **'System Mode'**
  String get settingsSystemModeLabel;

  /// No description provided for @settingsEnglishLabel.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get settingsEnglishLabel;

  /// No description provided for @settingsRussianLabel.
  ///
  /// In en, this message translates to:
  /// **'Russian'**
  String get settingsRussianLabel;

  /// No description provided for @settingsUserLabel.
  ///
  /// In en, this message translates to:
  /// **'User Info'**
  String get settingsUserLabel;

  /// No description provided for @settingsUsernameLabel.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get settingsUsernameLabel;

  /// No description provided for @settingsEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get settingsEmailLabel;

  /// No description provided for @settingsPositionLabel.
  ///
  /// In en, this message translates to:
  /// **'Position'**
  String get settingsPositionLabel;

  /// No description provided for @settingsNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get settingsNameLabel;

  /// No description provided for @settingsLoginPathDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your path'**
  String get settingsLoginPathDialogTitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
