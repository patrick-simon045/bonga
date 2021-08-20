import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreenMainText extends StatelessWidget {
  const WelcomeScreenMainText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
