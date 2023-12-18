

import 'package:flutter/material.dart';

class TextSearchField extends StatelessWidget {
  TextEditingController controller;
  String textField;
  IconData icon;
  Color iconColor;

  
  TextSearchField({required this.controller, required this.textField, required this.icon,this.iconColor=Colors.black,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(1, 1),
            color: Colors.grey.withOpacity(0.2),
          )
        ]
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: textField,
          prefixIcon: Icon(icon,color: iconColor,),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.white,
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.white,
            )
          )
        ),
      ),
    );
  }
}