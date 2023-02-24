import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mulukenapp/Components/WhatsAppUI.dart';
import 'package:mulukenapp/Screens/Homescreen.dart';
import 'package:mulukenapp/Screens/SignupScreen.dart';

import '../reUsableWidgets/textFeilds.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 5),
                color: Color.fromARGB(255, 91, 186, 94),
                height: 150,
                width: double.infinity,
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYzqdbD0fgN4icV37Q-YuzO1mKu2DVWqSv9Q&usqp=CAU')),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Login to your account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            reUsableTextFeild('Enter email', Icons.person_outline, false,
                _emailTextController),
            const SizedBox(
              height: 15,
            ),
            reUsableTextFeild(
                'Enter password', Icons.lock, false, _passwordTextController),
            const SizedBox(
              height: 15,
            ),
            Buttons(context, true, () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                  .then((value) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const WhatsAppUi();
                })).onError((error, stackTrace) {
                  print('erroe ${error.toString()}');
                });
              });
            }),
            SignUpOption(),
          ],
        ),
      ),
    );
  }

  Row SignUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account ?  ",
          style: TextStyle(color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SignUpScreen();
            }));
          },
          child: const Text(
            '  Sign up',
            style: TextStyle(
                fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
