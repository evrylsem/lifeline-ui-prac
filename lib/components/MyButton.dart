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
        padding: EdgeInsets.all(height * 0.02),
        margin: EdgeInsets.symmetric(horizontal: height * 0.047),
        // width: 170,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(height * 0.011)
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