import 'dart:async';

import 'package:facebook_ui/LoginScreen.dart';
import 'package:facebook_ui/Styles.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  static const String routeName = "Splash";

  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Expanded(child: Image.asset("assets/facebooklogo.png")),
          Text("From",style: hintTextStyle,),
          Image.asset("assets/meta.png"),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
