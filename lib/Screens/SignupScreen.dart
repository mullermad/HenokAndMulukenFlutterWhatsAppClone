import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mulukenapp/Components/WhatsAppUI.dart';
import 'package:mulukenapp/Screens/Homescreen.dart';
import 'package:mulukenapp/reUsableWidgets/textFeilds.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYzqdbD0fgN4icV37Q-YuzO1mKu2DVWqSv9Q&usqp=CAU'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Create a New Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            reUsableTextFeild('Enter UserName', Icons.person_outline, false,
                _userNameTextController),
            const SizedBox(
              height: 10,
            ),
            reUsableTextFeild(
                'Enter Email', Icons.email, false, _emailTextController),
            const SizedBox(
              height: 15,
            ),
            reUsableTextFeild(
                'Enter password', Icons.lock, false, _passwordTextController),
            const SizedBox(
              height: 15,
            ),
            Buttons(context, false, () {
              FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                  .then((value) {
                print('Successfully created new account');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const WhatsAppUi();
                }));
              }).onError((error, stackTrace) {
                print('Error $error');
              });
            }),
          ],
        ),
      ),
    );
  }
}
