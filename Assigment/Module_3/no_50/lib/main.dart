import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(),
                  labelText: 'Enter number'),
                ),
              ),
            )
           ],
        ),
      ),
    );
  }
}