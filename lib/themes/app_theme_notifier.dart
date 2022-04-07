

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_themes.dart';

class PaAppThemeNotifier extends ChangeNotifier {


  init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    int fxAppThemeMode = sharedPreferences.getInt("fx_app_theme_mode")??PAAppThemeType.light.index;
    changeAppThemeMode(PAAppThemeType.values[fxAppThemeMode]);

    // int fxCustomThemeMode = sharedPreferences.getInt("fx_custom_theme_mode")??FxAppThemeType.light.index;
    // changeCustomThemeMode(FxCustomThemeType.values[fxCustomThemeMode]);

    notifyListeners();
  }

  changeAppThemeMode(PAAppThemeType? themeType) async {
    PAAppTheme.defaultThemeType = themeType!;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt("fx_app_theme_mode", themeType.index);

    log(PAAppTheme.getThemeFromThemeMode().toString());
    notifyListeners();

  }

// changeCustomThemeMode(FxCustomThemeType? themeType) async {
//   FxCustomTheme.defaultThemeType = themeType!;
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   await sharedPreferences.setInt("fx_custom_theme_mode", themeType.index);
//
//   notifyListeners();
// }

}