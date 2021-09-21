import 'package:flutter/cupertino.dart';

mixin ResponsivenessManager {
  double largePadding(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.1;
}
