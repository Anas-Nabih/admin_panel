import 'package:admin_panel/screens/home.dart';
import 'package:admin_panel/screens/register.dart';
import 'package:admin_panel/screens/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: "sign_in",
    routes: {
      "sign_in": (context) => SignInScreen(),
      "register": (context) => Register(),
      "home" : (context) => Home()
    },
  ));
}
