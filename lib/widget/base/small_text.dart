

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;
  double size;
  Color color;
  FontWeight fw;
  SmallText({required this.text,this.color=Colors.black45,this.size=12,this.fw=FontWeight.bold,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size, color: color,fontWeight: fw));
  }
}