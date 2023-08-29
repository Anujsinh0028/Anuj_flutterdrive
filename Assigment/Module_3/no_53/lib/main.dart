// change background when button clicked

import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp());

}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
int index=0;
  void changecolor(){
   
    setState(() => index = random.nextInt(3));
  }

  List color= [Colors.red,Colors.blue,Colors.orange];
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    // var index;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
             Container(
              margin: EdgeInsets.all(50),
              padding: EdgeInsets.all(50),
              
              color: color[index],
              child: ElevatedButton(onPressed: (){changecolor();}, child: Text("change background")),
             )
             

            ],
          ),
        ),
      ),
    );
  }
}