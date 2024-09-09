import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: AppColors.primaryColorDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColorDark,
    ),
  );
}
