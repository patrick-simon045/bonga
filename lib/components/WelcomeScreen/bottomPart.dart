import 'package:flutter/material.dart';

import '../../main.dart';

class WelcomeScreenBottomPart extends StatelessWidget {
  const WelcomeScreenBottomPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LoginButton(buttonText: "Login"),
            RegisterButton(buttonText: "Register"),
          ],
        ),
      ),
    );
  }
}
