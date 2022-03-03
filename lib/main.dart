import 'package:flutter/material.dart';
import 'package:memory_lane_web/privacy_policy.dart';

import 'app/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Lane',
      routes: {
        '/': (context) => const App(),
        '/privacy-policy': (context) => const PrivacyPolicy()
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
