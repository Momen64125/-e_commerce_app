import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
 // CustomText({super.key});
final String text;
final Color? color;
final double? size;
CustomText({super.key, required this.text, this.color = Colors.black , this.size = 16});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size),

      ),
    );
  }
}
