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
  bool fvalue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(

            children: [

              Container(
                child: Checkbox(value: this.fvalue,
                onChanged: (value) {
                  setState(() {
                    this.fvalue=value!;
                  });
                },),
              ),
              Text("data"),

            ],
          ),
        ),
        ),
    );
  }
}