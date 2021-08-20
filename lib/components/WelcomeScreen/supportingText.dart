import 'package:flutter/material.dart';

import '../textWidget.dart';

class WelcomeScreenSupportingText extends StatelessWidget {
  const WelcomeScreenSupportingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text:
      "The easiest way to get connected to a mentor and get advice/support on related issues",
      textAlign: TextAlign.start,
      style: TextStyle(
        height: 1.5,
        color: Colors.grey,
      ),
    );
  }
}
