import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
    home:First(),
  );
  }
}   

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(   
          child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>const Second()));
              },
               child: const Text("click for next activity")),
        ),
    );
  }
}
  


class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("second page")),
    );
  }
}