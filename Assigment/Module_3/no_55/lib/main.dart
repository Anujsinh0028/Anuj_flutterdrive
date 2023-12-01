import 'package:flutter/material.dart';

void main(){
  runApp(const myapp());
}

// ignore: camel_case_types
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

// ignore: camel_case_types
class _myappState extends State<myapp> {
  bool fvalue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Checkbox(
              value: fvalue,
              onChanged: (value) {
                setState(() {
                  fvalue=value?? false;
                });
              },),
              if(fvalue)
               const SizedBox(
                height: 16.0,
                child: Text(
                  'This is the displayed text.',
                  style: TextStyle(fontSize: 14.0),
                ),
              ),

            ],
          ),
        ),
        ),
    );
  }
}