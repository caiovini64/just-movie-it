import 'package:flutter/material.dart';
import 'package:just_movie_it/ui/components/app_colors.dart';

ThemeData makeAppTheme() {
  return ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    buttonColor: primaryColor,
    primaryColor: primaryColor,
    accentColor: accentColor,
  );
}