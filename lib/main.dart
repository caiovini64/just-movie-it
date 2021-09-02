import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_movie_it/ui/components/components.dart';
import 'package:just_movie_it/ui/pages/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: makeAppTheme(),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
      ],
    );
  }
}
