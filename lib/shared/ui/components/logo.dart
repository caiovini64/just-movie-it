import 'package:flutter/material.dart';

import 'components.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 150,
        width: 150,
        color: accentColor,
      ),
    );
  }
}
