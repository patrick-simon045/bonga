import 'package:bonga/components/button.dart';
import 'package:bonga/components/textWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/WelcomeScreen/bottomPart.dart';
import 'components/WelcomeScreen/topPart.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bonga',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: GoogleFonts.castoroTextTheme(Theme.of(context).textTheme),
      ),
      home: BongaHome(title: 'Bonga'),
    );
  }
}

class BongaHome extends StatelessWidget {
  final String title;

  BongaHome({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Column(
          children: [WelcomeScreenTopPart(), WelcomeScreenBottomPart()],
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  final String buttonText;

  RegisterButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        print("Register Button Pressed");
      },
      child: TextWidget(text: buttonText),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String buttonText;

  LoginButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {
        print("Login Button Pressed");
      },
      child: TextWidget(text: buttonText),
    );
  }
}
