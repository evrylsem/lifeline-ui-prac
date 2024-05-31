import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  
  const MyButton({
    super.key,
    required this.onTap,
    });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 40),
        width: 170,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            "Log In",
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ),
      ),
    );
  }
}