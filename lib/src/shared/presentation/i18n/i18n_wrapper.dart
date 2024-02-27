import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class I18NWrapper {

  static Widget createLocalizationWrapper(Widget child) {
    return EasyLocalization(
      supportedLocales: supportedLocales,
      path: 'lib/src/core/translations',
      fallbackLocale: const Locale('en'),
      saveLocale: true,
      child: child,
    );
  }

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('es'),
  ];

  static Locale getLocale(String locale) {
    final supportedLocale = supportedLocales.firstWhere(
            (supportedLocale) => supportedLocale.languageCode == locale
    );
    return supportedLocale;
  }

  static setLocale(BuildContext context, String key) {
    context.setLocale(getLocale(key));
  }

  static getTranslation(BuildContext context, String key ) {
    return context.tr(key);
  }
}