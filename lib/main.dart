import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mulukenapp/Components/WhatsAppUI.dart';
import 'package:mulukenapp/PopupFiles/Setting.dart';
import 'package:mulukenapp/PopupFiles/linkedDevicesPage.dart';
import 'package:mulukenapp/PopupFiles/newBroadcastPage.dart';
import 'package:mulukenapp/PopupFiles/newGroupPage.dart';
import 'package:mulukenapp/PopupFiles/starredMessagesPage.dart';
import 'package:mulukenapp/Screens/LoginScreen.dart';
import 'package:mulukenapp/Screens/SignupScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
