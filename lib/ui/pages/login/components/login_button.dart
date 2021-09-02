import 'package:flutter/material.dart';
import 'package:just_movie_it/ui/components/components.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardButton(
      onPressed: () => print('a'),
      child: const Text('Login'),
    );
  }
}
