
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  double size;
  Color color;
  FontWeight fw;
  
  BigText({required this.text,this.color=const Color.fromARGB(115, 0, 0, 0),this.size=20,this.fw=FontWeight.bold,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size, color: color,fontWeight: fw));
  }
}