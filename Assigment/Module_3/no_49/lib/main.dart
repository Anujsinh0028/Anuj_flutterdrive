// color box 

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
      home: Scaffold(
        body: Container(
        
        child: ListView(
          children: [
            
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.red,
              height: 250,
              width: double.infinity,
            ),
      
      //////////////
            Container(
              
              child: Row( 
                children: [
                    Container(
                      margin: EdgeInsets.all(5),
                    color: Colors.blue,
                    height: 170,
                    width: MediaQuery.of(context).size.width/2.10,
                    ),
      
                     Container(
                      // margin: EdgeInsets.all(5),
              color: Colors.blue,
              height: 170,
              width: MediaQuery.of(context).size.width/2.10,
            ),
                ],
              ),  
            ),
      
             Container(
            
              child: Row(
                children: [
                    Container(
                      margin: EdgeInsets.all(5),
                    color: Colors.blue,
                    height: 170,
                    width: MediaQuery.of(context).size.width/2.10,
                    ),
      
                     Container(
                      // margin: EdgeInsets.all(5),
              color: Colors.blue,
              height: 170,
              width: MediaQuery.of(context).size.width/2.10,
            ),
                ],
              ),  
            ),
           
      //////////
            Container(
              child: Row(
                children: [
                    Container(
                       margin: EdgeInsets.all(10),
                    color: Colors.yellow,
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.5,
                    ),
      
                     Container(
                       margin: EdgeInsets.all(5),
              color: Colors.yellow,
              height: 100,
              width: MediaQuery.of(context).size.width/3.5,
            ),
      
                  Container(
                     margin: EdgeInsets.all(10),
              color: Colors.yellow,
              height: 100,
              width: MediaQuery.of(context).size.width/3.5,
            ),
                ],
              ),  
            ),
      
      
            Container(
              child: Row(
                children: [
                    Container(
                       margin: EdgeInsets.all(10),
                    color: Colors.yellow,
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.5,
                    ),
      
                     Container(
                       margin: EdgeInsets.all(5),
              color: Colors.yellow,
              height: 100,
              width: MediaQuery.of(context).size.width/3.5,
            ),
      
                  Container(
                     margin: EdgeInsets.all(10),
              color: Colors.yellow,
              height: 100,
              width: MediaQuery.of(context).size.width/3.5,
            ),
                ],
              ),  
            ),

              Container(
              child: Row(
                children: [
                    Container(
                       margin: EdgeInsets.all(10),
                    color: Colors.yellow,
                    height: 100,
                    width: MediaQuery.of(context).size.width/3.5,
                    ),
      
                     Container(
                       margin: EdgeInsets.all(5),
              color: Colors.yellow,
              height: 100,
              width: MediaQuery.of(context).size.width/3.5,
            ),
      
                  Container(
                     margin: EdgeInsets.all(10),
              color: Colors.yellow,
              height: 100,
              width: MediaQuery.of(context).size.width/3.5,
            ),
                ],
              ),  
            ),

            
          ],
        ),
      ),
      ),
    );
  }
}