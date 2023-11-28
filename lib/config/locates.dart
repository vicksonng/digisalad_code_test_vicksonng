import 'package:flutter/material.dart';

class SupportedLocales {
  SupportedLocales._();

  static Locale zh = const Locale('zh');
  static Locale en = const Locale('en');

  static Locale get defaultLocale => en;
  static List<Locale> get locales => [en, zh];
}
