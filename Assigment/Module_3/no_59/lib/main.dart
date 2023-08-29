import 'package:flutter/material.dart';
import 'package:no_59/login.dart';
import 'package:no_59/registration.dart';

void main(){
  runApp(loginApp());
}

class loginApp extends StatefulWidget {
  const loginApp({super.key});

  @override
  State<loginApp> createState() => _loginAppState();
}

class _loginAppState extends State<loginApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }
}