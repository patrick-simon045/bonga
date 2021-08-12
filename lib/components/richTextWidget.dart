import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final TextSpan textSpan;

  RichTextWidget({required this.textSpan});

  @override
  Widget build(BuildContext context) {
    return RichText(text: textSpan);
  }
}
