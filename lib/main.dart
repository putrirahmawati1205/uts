import 'package:flutter/material.dart';
import 'package:uts/login.dart';
import 'package:uts/register.dart';
import 'package:uts/splash.dart';
import 'package:uts/sukses.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context)=> const Splash(),
      '/login':(context) => const Login(),
      '/register':(context) => const Register(),
      '/sukses':(context) => const Sukses(),
    }
  ));
}

