import 'package:flutter/material.dart';

import 'components.dart';

class StandardButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  const StandardButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(400, 60),
        primary: primaryColor,
        onPrimary: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
