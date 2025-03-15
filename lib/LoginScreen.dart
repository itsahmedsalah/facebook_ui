import 'package:facebook_ui/HomePageScreen.dart';
import 'package:facebook_ui/Styles.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "Login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 74),
            Image.asset("assets/facebooklogo.png"),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Mobile Number or Email Address",
                  labelStyle: hintTextStyle,
                  border: textFieldStyle,
                  enabledBorder: textFieldStyle,
                  focusedBorder: textFieldStyle,
                  filled: true,
                  fillColor: bgTextFiled,
                ),
                cursorColor: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: hintTextStyle,
                  border: textFieldStyle,
                  enabledBorder: textFieldStyle,
                  focusedBorder: textFieldStyle,
                  filled: true,
                  fillColor: bgTextFiled,
                  suffixIcon: IconButton(
                    onPressed: _togglePasswordVisibility,
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ),
                cursorColor: Colors.grey,
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 24),
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    HomePageScreen.routeName,
                  );
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: Colors.blue,
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Login",
                    style: hintTextStyle.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            Text(
              "Forgotten Password ?",
              style: hintTextStyle.copyWith(fontWeight: FontWeight.w500),
            ),

            Spacer(),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 24),
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: Colors.blueAccent, width: 1),
                  ),
                  // backgroundColor: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Create Account",
                    style: hintTextStyle.copyWith(color: Color(0xff1877F2)),
                  ),
                ),
              ),
            ),
            Image.asset("assets/meta.png"),
            SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
