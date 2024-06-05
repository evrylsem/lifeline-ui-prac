import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String textButton;
  final bgColor;
  final textColor;
  
  const MyButton({
    super.key,
    required this.onTap,
    required this.textButton,
    required this.bgColor,
    required this.textColor,
    });
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 40),
        // width: 170,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: width * 0.037,
            ),
          )
        ),
      ),
    );
  }
}