import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin UiNavigationManager {
  void handleNavigation(BuildContext context, Stream<String> stream,
      {bool clear = false}) {
    stream.listen((page) {
      if (page.isNotEmpty) {
        if (clear) {
          Navigator.pushReplacementNamed(context, page);
        } else {
          Navigator.pushNamed(context, page);
        }
      }
    });
  }
}
