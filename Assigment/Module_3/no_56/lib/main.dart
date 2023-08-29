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
        body: Center(
          child: Container(
            height: MediaQuery.sizeOf(context).height/2,
            child: Row(
        
              children: [
        
                Container(
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      width: 130,
                      
                    ),
                    Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://media.istockphoto.com/id/1002038140/photo/walking-the-walk.jpg?s=612x612&w=0&k=20&c=gJatKXk9DboLmfupis-5Fzl_656nU-B6LJ6WcK32oc0="
                      ),
                    ),
                    Container(
                      width: 130,
                      
                    ),
                  ]),
                ),
        
                 Container(
                  // color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ 
                    Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://media.istockphoto.com/id/1002038140/photo/walking-the-walk.jpg?s=612x612&w=0&k=20&c=gJatKXk9DboLmfupis-5Fzl_656nU-B6LJ6WcK32oc0="
                      ),
                    ),
                    Container(
                      width: 130,
                      // height: 55,
                      child: Center(child: Text("Text",style: TextStyle(fontSize: 40),)),
                    ),
                    Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                       child: Image.network(
                        "https://media.istockphoto.com/id/1002038140/photo/walking-the-walk.jpg?s=612x612&w=0&k=20&c=gJatKXk9DboLmfupis-5Fzl_656nU-B6LJ6WcK32oc0="
                      ),
                    ),
                    ]),
                ),
        
                 Container(
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                      width: 130,
                      
                    ),
                    Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "https://media.istockphoto.com/id/1002038140/photo/walking-the-walk.jpg?s=612x612&w=0&k=20&c=gJatKXk9DboLmfupis-5Fzl_656nU-B6LJ6WcK32oc0="
                      ),
                    ),
                    Container(
                        width: 130,
                        
                      
                    ),
                  ]),
                ),
        
              ],
            )
          ),
        ),
      ),
    );
  }
}