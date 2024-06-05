import 'package:flutter/material.dart';
import 'package:qwerty/components/MyButton.dart';
import 'package:qwerty/components/MyTextfield.dart';
import 'package:qwerty/pages/RegisterPage.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final contactController = TextEditingController();
  final passController = TextEditingController();

  void loginUser() {

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(191, 27, 27, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            //logo
            Image.asset(
              'lib/images/white-logotext.png',
              height: height * 0.12,
              ),
            SizedBox(height: height * 0.1),
            //contact num text field
            MyTextfield(
              controller: contactController,
              hintText: 'Contact Number',
              obscureText: false,
            ),
            SizedBox(height: height * 0.02),
            //password text field
            MyTextfield(
              controller: passController,
              hintText: 'Password',
              obscureText: true,
            ),

            //forgot password
            SizedBox(height: height * 0.01),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1)
                    ),
                  ),
                ],
              ),
            ),

            //login button
            SizedBox(height: height * 0.05),
            MyButton(
              onTap: loginUser,
              textButton: 'Login',
              bgColor: Color.fromRGBO(255, 255, 255, 1),
              textColor: Color.fromRGBO(88, 83, 83, 1),
            ),
            
            SizedBox(height: height * 0.04),
            //dont have an acc? sign up
            Column(
              children: [
                Text(
                  'Dont have an account?',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: width * 0.035,
                    fontStyle: FontStyle.italic,
                  ),
                  ),
                SizedBox(height: height * 0.01),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => RegisterPage())
                  );
                  },
                  child: Text(
                    'Sign-up here',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: width * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                    
                    ),
                ),
              ],
            ),
            //sign-up button
            // const SizedBox(height: 75,),
            // Text(
            //   'est. since 2023',
            //   style: TextStyle(
            //     fontSize: 13,
            //     color: Color.fromRGBO(255, 255, 255, 1),
            //   ),
            //   )
          
          
          ],),
        ),
      ),
    );
  }
}