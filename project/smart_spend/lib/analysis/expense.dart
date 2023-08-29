import 'package:flutter/material.dart';

class graph2 extends StatefulWidget {
  const graph2({super.key});

  @override
  State<graph2> createState() => _graph2State();
}

class _graph2State extends State<graph2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(children: [
            SizedBox(height: 25,),

             Container(
                  child: Image.asset("assets/graph.png"),
                ),  

              SizedBox(height: 50,),


           Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: 
              Column(children: [
                
              InkWell(
              child: Container(

                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(236, 237, 236, 237),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 40, child: Image.asset("assets/store.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dabeli, Bhel",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Google Pay"),
                              ]),
                        ),
                      ],
                    ),
                    Container(
                        child: Text(
                      "₹60",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ))
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            InkWell(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(236, 237, 236, 237),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 40,
                            child: Image.asset("assets/onlineshop.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Boat Smart Watch",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Flipkart"),
                              ]),
                        ),
                      ],
                    ),
                    Container(
                        child: Text(
                      "₹2499",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ))
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            InkWell(
              child: Container(
              
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(236, 237, 236, 237),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 40, child: Image.asset("assets/stock.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nifty",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Trading"),
                              ]),
                        ),
                      ],
                    ),
                    Container(
                        child: Text(
                      "₹4870",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ))
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            InkWell(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(236, 237, 236, 237),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 40, child: Image.asset("assets/youth.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          // padding: EdgeInsets.only(top: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Baburao Kaka",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("PhonePay"),
                              ]),
                        ),
                      ],
                    ),
                    Container(
                        child: Text(
                      "₹150",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ))
                  ],
                ),
              ),
            ),

              ]),
            ),
           


        ],)
      ),
    );
  }
}