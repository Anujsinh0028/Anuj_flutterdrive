import 'package:flutter/cupertino.dart';
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
  Color _selectedColor = Colors.white;

  void _onColorSelected(Color? value) {
    setState(() {
      _selectedColor = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:Container(
          width: MediaQuery.sizeOf(context).width,
          color: _selectedColor,
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 300),
              child: Column(children: [
                  Radio(
                  value: Colors.red,
                  groupValue: _selectedColor,
                  onChanged: _onColorSelected,
                ),
                Text('Red'),
                Radio(
                  value: Colors.green,
                  groupValue: _selectedColor,
                  onChanged: _onColorSelected,
                ),
                Text('Green'),
                Radio(
                  value: Colors.blue,
                  groupValue: _selectedColor,
                  onChanged: _onColorSelected,
                ),
                Text('Blue'),
              ]),
            ),
        
            
          ]),
        
        ) 
        ),
    );
  }

  
}
