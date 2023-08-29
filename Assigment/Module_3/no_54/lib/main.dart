// increse and decrese font size when button clicked

import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  double size_text=20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
              children: [
                Text("Font",style: TextStyle(fontSize: size_text),),
        
                ElevatedButton(onPressed: (){setState(() {
                  size_text -=2;
                  
                });}, child: Text("-")),
        
                
                ElevatedButton(onPressed: (){setState(() {
                  size_text +=2;
                  
                });}, child: Text("+")),
        
              ],
            ) ,
          ),
        ),
      ),
    );
  }
}