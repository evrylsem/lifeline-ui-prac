import 'package:flutter/material.dart';
import 'package:qwerty/components/MyButton.dart';
import 'package:qwerty/components/MyTextfield.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final contactController = TextEditingController();
  final passController = TextEditingController();

  void loginUser() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(191, 27, 27, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            // const SizedBox(height: 20,),
            //logo
            Image.asset(
              'lib/images/white-logotext.png',
              height: 100,
              ),
            // const Icon(
            //   Icons.lock,
            //   size: 100,
            // ),
            const SizedBox(height: 70,),
            //contact num text field
            MyTextfield(
              controller: contactController,
              hintText: 'Contact Number',
              obscureText: false,
            ),
            const SizedBox(height: 25,),
            //password text field
            MyTextfield(
              controller: passController,
              hintText: 'Password',
              obscureText: true,
            ),

            //forgot password
            const SizedBox(height: 10,),
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
            const SizedBox(height: 54,),
            MyButton(
              onTap: loginUser,
              textButton: 'Login',
              bgColor: Color.fromRGBO(255, 255, 255, 1),
              textColor: Color.fromRGBO(88, 83, 83, 1),
            ),
            
            const SizedBox(height: 30,),
            //dont have an acc? sign up
            Column(
              children: [
                Text(
                  'Dont have an account?',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                  ),
                const SizedBox(height: 10,),
                Text(
                  'Sign-up here',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
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