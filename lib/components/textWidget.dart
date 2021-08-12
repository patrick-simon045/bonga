import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  TextWidget({required this.text, this.style, this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('$text', style: style, textAlign: textAlign));
  }
}
