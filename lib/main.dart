import 'package:facebook_ui/HomePageScreen.dart';
import 'package:facebook_ui/LoginScreen.dart';
import 'package:facebook_ui/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      routes: {
        Splashscreen.routeName: (_) => Splashscreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        HomePageScreen.routeName: (_) => HomePageScreen(),
      },
      initialRoute: Splashscreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
