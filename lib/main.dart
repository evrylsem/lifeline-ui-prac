import 'package:flutter/material.dart';
import 'package:qwerty/pages/RegisterPage.dart';
import 'pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'DMSans',
      ),
      home: LoginPage(),
    );
  }
}



