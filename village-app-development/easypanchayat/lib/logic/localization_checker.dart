import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../constants/enum.dart';






class LocalizationChecker {
  static changeLanguage(BuildContext context, SampleItem item) {
    Locale? currentLocale = EasyLocalization.of(context)!.currentLocale;
    switch (item) {
      case SampleItem.marathi:
        EasyLocalization.of(context)!.setLocale(const Locale('mr', 'IN'));
        break;
      case SampleItem.hindi:
        EasyLocalization.of(context)!.setLocale(const Locale('hi', 'IN'));
        break;
        default:
        EasyLocalization.of(context)!.setLocale(const Locale('en', 'US'));
        break;      
    }
  }
}

