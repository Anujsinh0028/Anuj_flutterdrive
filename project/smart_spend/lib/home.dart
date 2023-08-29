import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:smart_spend/other/bottombar.dart';
import 'package:smart_spend/analysis/graph.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return 
     SafeArea( /// safe area for make sceen fix 
       child: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Profile",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )
                      ).animate().animate().fade(duration: 1600.ms),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none_outlined,
                            size: 35,
                          )),
                      InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/menu.png",
                            height: 30,
                          ))
                    ],
                  ),
                ],
              )),
     //////////////////////
              SizedBox(
                height: 10,
              ),
              InkWell(
                
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  width: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(236, 237, 236, 237),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(height: 50, child: Image.asset("assets/user.png")).animate().fadeIn(duration: 1600.ms),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 5,
                        ),
                        child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Graphic Designer"),
                              Text(
                                "Chavda Parthraj",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ).animate().fade(duration: 1600.ms),
              ),
     //////////////////
              SizedBox(
                height: 10,
              ),

              InkWell(
                onTap: () {
                  
                },
                child: Card(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(147, 66, 90, 245),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 45,
                                  child: Image.asset("assets/mastercard.png")),
                              Text(
                                "Master Card",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "XXXX-XXXX-XXXX-2005",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "CHAVDA PARTHRAJ K.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ).animate().fadeIn(duration: 1600.ms),
              ),
     //////////////////////
              SizedBox(
                height: 15,
              ),
     
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (builder) => graph()));
                },
                child: Card(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  // elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    width: 100,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(236, 237, 236, 237),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Income",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "0.00",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(147, 66, 90, 245)),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Expense",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "0.00",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(146, 183, 18, 18)),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "0.00",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
     
              SizedBox(
                height: 15,
              ),
     /////////////////////////
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  "Transaction",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ).animate().fade(duration: 1600.ms),
              ),
     
              SizedBox(
                height: 15,
              ),
  //////////////   
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: 
                  Column(children: [
                    
                  Slidable(
                    endActionPane: ActionPane(
                          motion: DrawerMotion(),
                           children: [

                            SlidableAction(onPressed: (context) {
                              
                            },
                            // spacing: 10,
                            backgroundColor: Color.fromARGB(255, 255, 97, 86),
                            icon: Icons.delete,  
                            label: 'Delete',
                            borderRadius: BorderRadius.circular(15),
                            // flex: 2,
                            // foregroundColor: Colors.amber,
                           
                            ),]
                            ),

                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
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
                   
                   
                  ]),
                ).animate().fadeIn(duration: 1600.ms),
              ),

              SizedBox(height: 10,),
             
     
            ],
          ),
        ),

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
        
         ),
     );
  }
}
