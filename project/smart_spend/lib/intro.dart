import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_spend/home.dart';

class intropage extends StatefulWidget {
  const intropage({super.key});

  @override
  State<intropage> createState() => _intropageState();
}

class _intropageState extends State<intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 25,left: 25),
          child: Column(
             children: [
              SizedBox(height: 50,),
           
              Container(
                alignment: Alignment.topRight,
                child: ElevatedButton( style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(147, 255, 255, 255),
                  padding: EdgeInsets.symmetric(horizontal: 30,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  
                ),
              
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (builder)=>home()));
              
                }, child: Text("Skip",style: TextStyle(color: Colors.black,fontSize: 17),)),
              ),
              
              ///////////////////////////////
              Container(
                height: 400,
                // color: Colors.black,
                child: CarouselSlider(
                  items: [
                  Container(
                    // color: Colors.amber,
                    padding: EdgeInsets.only(left: 40,right: 40),
                    child: Image.asset("assets/Wallet.png"),
                  ),
              
                   Container(
                    padding: EdgeInsets.all(50),
                    // color: Colors.black,
                    child: Image.asset("assets/PigiWalaBank.png"),
                  ),
              
                   Container(
                    padding: EdgeInsets.only(left: 35,right: 35),
                    // color: Colors.amber,
                    child: Image.asset("assets/graph.png"),
                  ),
                ],
                 options: CarouselOptions(
                  height: 450,
                  autoPlay: true,
                  // enableInfiniteScroll: false,
                 )
                 ),
              ),
              ////////////////////
               SizedBox(height: 10,), 
              Container(
                alignment: Alignment.topLeft,
                // margin: EdgeInsets.only(left: 30),
                // color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              Text("Welcome to Smart Spent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),).animate().fadeIn(duration: 900.ms).slide(),
               SizedBox(height: 8,),
              Text("Managing your ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),).animate().addEffect(MoveEffect(begin:Offset(100, 1) ,duration: 1220.ms) ).slide(),
               SizedBox(height: 4,),
              Text("money is about to",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),).animate().fadeIn(duration: 1200.ms).slide(),
               SizedBox(height: 4,),
              Text("get a lot better.",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),).animate().fadeIn(duration: 1400.ms).slide()
                ]),
              ),
        /////////////////       
                SizedBox(height: 60,),     
                Container(
                alignment: Alignment.topRight,
                child: ElevatedButton( style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(147, 66, 90, 245),
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  
                ),
              
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (builder)=>home()));
              
                }, child: Text("Login",style: TextStyle(fontSize: 25,),)),
              ),
        
               SizedBox(height: 20,),     
                Container(
                alignment: Alignment.topRight,
                child: ElevatedButton( style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(150, 237, 236, 237),
                  minimumSize: const Size.fromHeight(50), //// for responssive width
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  
                ),
              
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (builder)=>home()));
              
                }, child: Text("Create an Account",style: TextStyle(fontSize: 25,color: Colors.black),)),
              ),

              
        
        
             ],
          ),
        ),
      ),
    );
  }
}