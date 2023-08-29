import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(147, 66, 90, 245),
        onPressed: (){
          // Navigator.pop(context)

      },
      child: Text("+",style: TextStyle(fontSize: 30),)
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(147, 66, 90, 245),
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20,),
              // InkWell (
              //   onTap: () {
                
              // },
              //   child: Icon(Icons.home)),
        
              //    InkWell (
              //   onTap: () {
                
              // },
              //   child: Icon(Icons.analytics)),
        
              //    InkWell (
              //   onTap: () {
                
              // },
              //   child: Icon(Icons.wallet)),
        
              //    InkWell (
              //   onTap: () {
                
              // },
              //   child: Icon(Icons.account_box)),
        
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}