import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'modules/authentication/main/factories/pages/pages.dart';
import 'shared/ui/components/components.dart';

// ignore: avoid_void_async
void main() async {
  await dotenv.load();
  runApp(DevicePreview(
    builder: (_) => MyApp(),
    enabled: !kReleaseMode,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: makeAppTheme(),
      initialRoute: '/login',
      routes: {
        '/login': (_) => makeLoginPage(),
        '/signup': (_) => makeSignupPage(),
      },
    );
  }
}
