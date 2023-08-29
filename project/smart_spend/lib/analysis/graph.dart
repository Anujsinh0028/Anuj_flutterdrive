import 'package:flutter/material.dart';
import 'package:smart_spend/other/bottombar.dart';
import 'package:smart_spend/analysis/expense.dart';
import 'package:smart_spend/analysis/income.dart';
import 'package:smart_spend/analysis/income.dart';
import 'package:smart_spend/home.dart';

class graph extends StatefulWidget {
  const graph({super.key});

  @override
  State<graph> createState() => _graphState();
}

class _graphState extends State<graph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                  Navigator.push(context,
                   MaterialPageRoute(builder: (builder)=>home()));
                  }, icon: Icon(Icons.arrow_back_ios)),

                  Text("Aug 2023"),

                   IconButton(onPressed: (){
                  Navigator.push(context,
                   MaterialPageRoute(builder: (builder)=>home()));
                  }, icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),
/////////////////////////////
                         
///////////////////////// 
                  DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:20,right: 20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(150, 237, 236, 237),
                            borderRadius: BorderRadius.circular(10),
                          ),
                                  
                          child: TabBar(
                            indicator: BoxDecoration(
                            color: Color.fromARGB(147, 66, 90, 245),
                            borderRadius: BorderRadius.circular(10),),
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                            Tab(text:"Income 5000",),
                            Tab(text:'Expense 2500',),
                            
                          ]),
                        ),
                        
                        Container(
                      //  width: double.maxFinite,
                       height: MediaQuery.sizeOf(context).height/1.4,
                       child: TabBarView(
                        children: [
                        graph1(),
                        graph2(),
                                         ]),
                     ),
                      ],
                    ),
                  ),

                  
////////////////////////                  


          ]),

      ),
    );
  }
}