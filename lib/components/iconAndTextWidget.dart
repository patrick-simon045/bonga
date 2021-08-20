import 'package:bonga/components/textWidget.dart';
import 'package:flutter/material.dart';

class IconLogo extends StatefulWidget {
  final double logoSize;
  final TextStyle? letterStyle;

  IconLogo({
    required this.logoSize,
    this.letterStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30.0,
      color: Colors.white,
    ),
  });

  @override
  _IconLogoState createState() => _IconLogoState();
}

class _IconLogoState extends State<IconLogo> {
  @override
  Widget build(BuildContext context) {
    final containerSize = widget.logoSize;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: containerSize,
          width: containerSize * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.2 * containerSize),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                  offset: Offset(0.0, 10.0),
                )
              ]),
        ),
        ClipPath(
          clipper: CustomClipperMediumShape(),
          child: Container(
            height: containerSize,
            width: containerSize,
            color: Colors.grey,
          ),
        ),
        ClipPath(
          clipper: CustomClipperLargestShape(),
          child: Container(
            height: containerSize,
            width: containerSize,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: TextWidget(
            text: "B",
            style: widget.letterStyle,
          ),
        ),
      ],
    );
  }
}

class CustomClipperMediumShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final totalWidth = size.width;
    final totalHeight = size.height;

    var path = Path();
    path.moveTo(0.8 * totalWidth, 0.0);
    path.lineTo(0.4 * totalWidth, totalHeight);
    path.lineTo(0.8 * totalWidth, totalHeight);
    path.quadraticBezierTo(
        totalWidth, totalHeight, totalWidth, 0.8 * totalHeight);
    path.lineTo(totalWidth, 0.2 * totalHeight);
    path.quadraticBezierTo(totalWidth, 0.0, 0.8 * totalWidth, 0.0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustomClipperLargestShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final totalWidth = size.width;
    final totalHeight = size.height;

    var path = Path();

    path.moveTo(0.0, 0.2 * totalHeight);
    path.lineTo(0.0, 0.8 * totalHeight);
    path.quadraticBezierTo(0.0, totalHeight, 0.2 * totalWidth, totalHeight);
    path.lineTo(0.4 * totalWidth, totalHeight);
    path.quadraticBezierTo(
        0.5 * totalWidth, totalHeight, 0.6 * totalWidth, 0.9 * totalHeight);
    path.lineTo(0.9 * totalWidth, 0.4 * totalHeight);
    path.quadraticBezierTo(
        totalWidth, 0.25 * totalHeight, totalWidth, 0.2 * totalHeight);
    path.quadraticBezierTo(totalWidth, 0.0, 0.8 * totalWidth, 0.0);
    path.lineTo(0.8 * totalWidth, 0.0);
    path.lineTo(0.2 * totalWidth, 0.0);
    path.quadraticBezierTo(0.0, 0.0, 0.0, 0.2 * totalHeight);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
