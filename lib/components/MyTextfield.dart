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
    double width = MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.045),
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(height * 0.011),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(height * 0.011),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  focusColor: Color.fromRGBO(255, 255, 255, 1),
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey[500]) ,
                ),
                style: TextStyle(
                  fontSize: width * 0.03,
                ),
              ),
            );
  }
}