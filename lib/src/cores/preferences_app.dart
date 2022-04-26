import 'package:aldo_neri/src/cores/repository.dart';
import 'package:flutter/material.dart';

class PreferencesApp {
  static const String _localeLanguageCodeKey = 'localeLanguajeCode';
  static const String _localeCountyCodeKey = 'localeCountryCode';

  /////////////////locale/////////////////////////////////////////////////

  static Future<void> saveLocale(Locale locale) async {
    Repository.saveString(_localeLanguageCodeKey, locale.languageCode);
    Repository.saveString(_localeCountyCodeKey, locale.countryCode ?? '');
  }

  static Future<Locale> get locale async {
    String? code = await Repository.loadString(_localeLanguageCodeKey);
    if (code?.isEmpty ?? true) code = 'es';
    final String country =
        await Repository.loadString(_localeCountyCodeKey) ?? "";
    if (country.isEmpty) {
      return Locale(code!);
    } else {
      return Locale(code! + '_' + country);
    }
  }

  /////////////////theme/////////////////////////////////////////////////

  static Future<void> saveTheme(ThemeData theme) async {
    if (theme.backgroundColor == ThemeData.dark().backgroundColor) {
      Repository.saveInt('theme', 1);
    } else {
      Repository.saveInt('theme', 0);
    }
  }

  static Future<ThemeData> get theme async {
    final int selector = await Repository.loadInt('theme') ?? 0;
    if (selector == 1) {
      ThemeData myTheme = ThemeData.dark().copyWith(
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
              backgroundColor: Colors.grey.shade900,
            ),
      );
      return myTheme;
    } else {
      ThemeData myTheme = ThemeData.light().copyWith(
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: const Color.fromARGB(255, 10, 162, 150)));
      return myTheme;
    }
  }
}
