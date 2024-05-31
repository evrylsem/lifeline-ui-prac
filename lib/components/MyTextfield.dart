import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  focusColor: Color.fromRGBO(255, 255, 255, 1),
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey[500]) ,
                ),
              ),
            );
  }
}