import 'package:flutter/material.dart';
import 'package:just_movie_it/ui/components/components.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 150),
            Logo(),
          ],
        ),
      ),
    );
  }
}
