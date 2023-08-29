import 'package:flutter/material.dart';

class back extends StatefulWidget {
  const back({super.key});

  @override
  State<back> createState() => _backState();
}

class _backState extends State<back> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(child: Text("back page")),
      ),
    );
  }
}