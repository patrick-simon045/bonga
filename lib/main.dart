import 'package:bonga/components/textWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/iconAndTextWidget.dart';

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
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconLogo(
                      logoSize: MediaQuery.of(context).size.height * 0.07,
                      letterStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35.0,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      alignment: Alignment.center,
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: "Get connected to the best ",
                          style: GoogleFonts.castoro(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                              fontSize: 45.0,
                            ),
                          ),
                          children: [
                            TextSpan(
                              text: "Mentors",
                              style: GoogleFonts.castoro(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 45.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextWidget(
                      text:
                          "The easiest way to get connected to a mentor and get advice/support on related issues",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blueGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: TextWidget(
                        text: "Button 1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextWidget(
                        text: "Button 2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
