import 'package:bonga/components/WelcomeScreen/supportingText.dart';
import 'package:bonga/components/iconAndTextWidget.dart';
import 'package:flutter/material.dart';

import 'mainText.dart';

class WelcomeScreenTopPart extends StatelessWidget {
  const WelcomeScreenTopPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconLogo(logoSize: MediaQuery.of(context).size.height * 0.07),
            SizedBox(height: 20.0),
            WelcomeScreenMainText(),
            SizedBox(height: 10.0),
            WelcomeScreenSupportingText(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          ],
        ),
      ),
    );
  }
}
