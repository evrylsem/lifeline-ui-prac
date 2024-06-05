import 'package:flutter/material.dart';
import 'package:qwerty/components/MyButton.dart';
import 'package:qwerty/components/MyTextfield.dart';
import 'package:qwerty/pages/LoginPage.dart';

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
    double width = MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      appBar: AppBar(
        toolbarHeight: height * 0.06,
        centerTitle: true,
        title: Text(
          'SIGN-UP',
          style: TextStyle(
            fontSize: width * 0.048,
          ),
          ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 3,
        shadowColor: Color.fromRGBO(88, 83, 83, 0.5),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          icon: Image.asset(
            'lib/images/back-red-nobg.png',
            height: height * 0.02,
          )),
        ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //First Name
            SizedBox(height: height * 0.04),
            inputTextfield('First Name:', firstController, 'First Name', width, height),
        
            //Last Name
            SizedBox(height: height * 0.01),
            inputTextfield('Last Name:', lastController, 'Last Name', width, height),
        
            //E-mail
            SizedBox(height: height * 0.01),
            inputTextfield('Email Address:', emailController, 'Email Address', width, height),
        
            //Contact
            SizedBox(height: height * 0.01),
            inputTextfield('Contact Number:', contactController, 'Contact Number', width, height),
        
            //Password
            SizedBox(height: height * 0.01),
            inputTextfield('Password:', passController, 'Password', width, height, obscureText: true),
        
            //confirm
            SizedBox(height: height * 0.01),
            inputTextfield('Confirm Password:', conpassController, 'Cofirm Password', width, height, obscureText: true),
        
            //reg button
            SizedBox(height: height * 0.04),
            MyButton(
              onTap: registerUser,
              textButton: 'Register',
              bgColor: Color.fromRGBO(191, 27, 27, 1),
              textColor: Color.fromRGBO(255, 255, 255, 1),
              ),
        
            //alr
            SizedBox(height: height * 0.04),
            Text(
              'Already have an account?',
              style: TextStyle(
                fontSize: width * 0.035,
              ),
              ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => LoginPage())
              );
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color.fromRGBO(191, 27, 27, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.035,
                ),
              ),
            ),
        
            //logo
            SizedBox(height: height * 0.02),
            Image.asset(
              'lib/images/logo.png',
              height: height * 0.05,
            ),
            SizedBox(height: height * 0.04),
          ],
        ),
      ),
      );
  }
}

Widget inputTextfield(String title, TextEditingController controller, String hintText, double width, double height, {bool obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.103),
        child: Text(
          title,
          style: TextStyle(
            fontSize: width * 0.04,
          ),
        ),
      ),
      SizedBox(height: height * 0.001),
      MyTextfield(
        controller: controller,
        hintText: hintText,
        obscureText: obscureText,
      ),
    ],
  );
}


