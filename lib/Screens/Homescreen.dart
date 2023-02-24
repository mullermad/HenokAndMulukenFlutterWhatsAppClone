import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mulukenapp/Screens/LoginScreen.dart';
import 'package:mulukenapp/Screens/SignupScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Center(
        //     child: ElevatedButton(
        //         onPressed: () {
        //           FirebaseAuth.instance.signOut().then((value) {
        //             print('user sighned out succesfully');
        //             Navigator.push(context, MaterialPageRoute(builder: (context) {
        //               return const LoginScreen();
        //             }));
        //           });
        //         },
        //         child: const Text('logout'))),
        );
  }
}
