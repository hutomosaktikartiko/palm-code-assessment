import 'package:flutter/material.dart';

import 'color_config.dart';

class ThemeConfig {
  static ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    dividerColor: ColorConfig.greyDivider,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}
