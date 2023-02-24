import 'package:flutter/material.dart';

TextField reUsableTextFeild(String text, IconData icon, bool IsPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: IsPasswordType,
    autocorrect: !IsPasswordType,
    enableSuggestions: !IsPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    keyboardType: IsPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

// ignore: non_constant_identifier_names
Container Buttons(BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(90),
    ),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.black26;
          }
          return const Color.fromARGB(255, 10, 205, 16);
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      child: Text(
        isLogin ? 'Log In' : "Sign Up",
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 19,
        ),
      ),
    ),
  );
}
