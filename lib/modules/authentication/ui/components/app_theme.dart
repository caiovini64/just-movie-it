import 'package:flutter/material.dart';

import 'package:just_movie_it/modules/authentication/ui/components/components.dart';

ThemeData makeAppTheme() {
  return ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    buttonColor: primaryColor,
    primaryColor: primaryColor,
    accentColor: accentColor,
    textTheme: TextTheme(
      bodyText1: const TextStyle(
        color: textColor,
        fontWeight: FontWeight.w300,
      ),
      bodyText2: const TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      subtitle1: TextStyle(
        color: textColor.withOpacity(0.3),
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}
