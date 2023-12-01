import 'package:flutter/material.dart';
import 'package:no_59/registration.dart';

void main(){
  runApp(const loginApp());
}

class loginApp extends StatefulWidget {
  const loginApp({super.key});

  @override
  State<loginApp> createState() => _loginAppState();
}

class _loginAppState extends State<loginApp> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: register(),
    );
  }
}