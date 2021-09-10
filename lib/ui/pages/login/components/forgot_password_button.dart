import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forgot your password?',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
