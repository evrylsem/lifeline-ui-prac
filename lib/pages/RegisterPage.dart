import 'package:flutter/material.dart';
import 'package:qwerty/components/MyButton.dart';
import 'package:qwerty/components/MyTextfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final firstController = TextEditingController();
  final lastController = TextEditingController();
  final emailController = TextEditingController();
  final contactController = TextEditingController();
  final passController = TextEditingController();
  final conpassController = TextEditingController();

  void registerUser() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      appBar: AppBar(
        centerTitle: true,
        title: Text('SIGN-UP'),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 3,
        shadowColor: Color.fromRGBO(88, 83, 83, 0.5),
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'lib/images/back-red.png',
            height: 100,
          )),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //First Name
          const SizedBox(height: 25,),
          inputTextfield('First Name:', firstController, 'First Name'),

          //Last Name
          const SizedBox(height: 10,),
          inputTextfield('Last Name:', lastController, 'Last Name'),

          //E-mail
          const SizedBox(height: 10,),
          inputTextfield('Email Address:', emailController, 'Email Address'),

          //Contact
          const SizedBox(height: 10,),
          inputTextfield('Contact Number:', contactController, 'Contact Number'),

          //Password
          const SizedBox(height: 10,),
          inputTextfield('Password:', passController, 'Password', obscureText: true),

          //confirm
          const SizedBox(height: 10,),
          inputTextfield('Confirm Password:', conpassController, 'Cofirm Password', obscureText: true),

          //reg button
          const SizedBox(height: 35,),
          MyButton(
            onTap: registerUser,
            textButton: 'Register',
            bgColor: Color.fromRGBO(191, 27, 27, 1),
            textColor: Color.fromRGBO(255, 255, 255, 1),
            ),

          //alr
          const SizedBox(height: 25,),
          Text('Already have an account?'),
          Text(
            'Login',
            style: TextStyle(
              color: Color.fromRGBO(191, 27, 27, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      );
  }
}

Widget inputTextfield(String title, TextEditingController controller, String hintText, {bool obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 42.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      SizedBox(height: 5),
      MyTextfield(
        controller: controller,
        hintText: hintText,
        obscureText: obscureText,
      ),
    ],
  );
}


