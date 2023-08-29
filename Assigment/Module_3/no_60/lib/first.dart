import 'package:flutter/material.dart';
import 'package:no_60/back.dart';
// import 'package:no_60/home.dart';
import 'package:no_60/order.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        color: Color.fromARGB(255, 229, 223, 223),
        child: Column(
          children: [
            SizedBox(
            height: 30,
          ),

            Container(
          width: MediaQuery.sizeOf(context).width,
          margin: EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               InkWell(
                onTap: (){
              setState(() {
                Navigator.push(context,
                 MaterialPageRoute(builder: (builder)=> back()));
              });
             },

            child: Container(
              width: 40,
              height: 40,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),         
              child: Icon(Icons.arrow_back),
            ),
          ),
           InkWell( 
             onTap: (){
              setState(() {
                Navigator.push(context,
                 MaterialPageRoute(builder: (builder)=> back()));
              });
             },

            child: Container(
               width: 40,
              height: 40,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
               ),
              child: Icon(Icons.search),
            ),
          ),
      
            ],
          ),
          
         ),

         SizedBox(height: 20,),
////////////

         Container(
          // width: ,
          margin: EdgeInsets.only(left:25,right: 30),
          // height: 150,
          // color: Colors.amber,
          
          child: Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            children: [

              Container(
                // color: Colors.white,
                width: MediaQuery.sizeOf(context).width/1.7,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      alignment: Alignment.topLeft,
                      //  margin: EdgeInsets.only(right: 120),
                      child: Text("Restaurant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ),

                    SizedBox(height: 10,),

                    Container(
                      // color: Colors.amber,
                      // alignment: Alignment.topLeft,
                      // margin: EdgeInsets.only(right: 85),
                      // width: 200,
                      margin: EdgeInsets.only(right:55),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(

                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 164, 164, 156),
                          ),
                          child: Text("20-30min",style: TextStyle(color: Colors.white),),
                        ),
                        Text("2.4km",style: TextStyle(color: Color.fromARGB(255, 164, 164, 156),),),
                        Text("Restaurant",style:TextStyle(color: Color.fromARGB(255, 164, 164, 156),) ,),
                      ],
                    ),),

                    SizedBox(height: 15,),

                    Container(
                      alignment: Alignment.bottomLeft,
                      // margin: EdgeInsets.only(right: 80),
                      child: Text("Orange Sandwiches is delicious",style: TextStyle(fontSize: 15),),
                    ),

                  ]
                  ),
                  ),

                  
                  Container(
                    // color: Color.fromARGB(255, 164, 164, 156),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left:10,bottom:30),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white),
                              child: Image.network("https://img.freepik.com/premium-vector/letter-r-logo-design-logo-template-creative-r-logo-vector-symbol_487414-3674.jpg?w=740"),
                          ),

                          SizedBox(height: 25,),

                          Container(child: Row(
                            children: [
                              Icon(Icons.star_outline,color: Colors.amber,),
                              Text("4.7",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                            ],
                          ),),
                        ],
                      ),
                  ),
              
            ],
          ),

         ),
/////////////////////////
         SizedBox(
          height: 30,
         ),

         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Container(
            height: 40,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                SizedBox(width: 20,),

                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Recommanded",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),)),
                  ),
                ),

                SizedBox(width: 20,),
         
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Popular",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),

                SizedBox(width: 20,),
         
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Noodles",style: TextStyle(fontWeight: FontWeight.bold,),)),
                  ),
                ),

                SizedBox(width: 20,),
         
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Pizza",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),

                 SizedBox(width: 20,),

                 InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Pizza",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),

                SizedBox(width: 20,),
         
              ],
            ),
           ),
         ),
/////////////////////
          SizedBox(
            height: 40,
          ),

          Card(
            margin: EdgeInsets.only(left: 25,right: 25),
            elevation: 10,
            
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 100,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Row(                   
                    children: [
                      SizedBox(width: 2,),

                  Container(
                    child: Image.network(
                      "https://media.istockphoto.com/id/1190330112/photo/fried-pork-and-vegetables-on-white-background.jpg?s=612x612&w=0&k=20&c=TzvLLGGvPAmxhKJ6fz91UGek-zLNNCh4iq7MVWLnFwo="
                      ),
                  ),
                  
                  

                  Container(  
                    
                    child: Column(
                    
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                      Text("Soba Soup",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      Text("No.1 in sales",style: TextStyle(color: Colors.amber),),

                      Text("₹150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ]
                    ),
                  ),

                  ],
                  ),

                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (builder)=>OrderPage()));
                        }, icon: Icon(Icons.slideshow)),
                      ),

                ],
              ),
            ),
          ),

            SizedBox(
            height: 20,
          ),
///////////////////////
           Card(
            margin: EdgeInsets.only(left: 25,right: 25),
            elevation: 10,
            
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 100,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Row(                   
                    children: [
                      SizedBox(width: 2,),

                  Container(
                    child: Image.network(
                      "https://media.istockphoto.com/id/913034864/photo/fish-dish-grilled-salmon-and-asparagus.jpg?s=612x612&w=0&k=20&c=f0NLE67qkpMXf_wa3kPY3QKs-xxEDI4YNqPu72qdGeU="
                      ),
                  ),
                  
                  // SizedBox(width: 5,),

                  Container(  
                    
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                      Text("Soba Pasta 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      Text("No.1 in sales",style: TextStyle(color: Colors.amber),),

                      Text("₹150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ]
                    ),
                  ),

                  ],
                  ),

                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (builder)=>OrderPage()));
                        }, icon: Icon(Icons.slideshow)),
                      ),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
//////////////////////////
           Card(
            margin: EdgeInsets.only(left: 25,right: 25),
            elevation: 10,
            
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 100,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Row(                   
                    children: [
                      SizedBox(width: 2,),

                  Container(
                    child: Image.network(
                      "https://media.istockphoto.com/id/1155681995/photo/spaghetti-pasta-with-meatballs.jpg?s=612x612&w=0&k=20&c=irfNrv5UMs85QZ4z2lmiDOg57u_eDoiZ8WqgLLamzog="
                      ),
                  ),
                  
                  // SizedBox(width: 5,),

                  Container(  
                    
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                      Text("Soba Samun 1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      Text("No.1 in sales",style: TextStyle(color: Colors.amber),),

                      Text("₹150",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ]
                    ),
                  ),

                  ],
                  ),

                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(onPressed: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (builder)=>OrderPage()));
                        }, icon: Icon(Icons.slideshow)),
                      ),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 65,
          ),
/////////////////////////   
          Container(
            margin: EdgeInsets.only(right: 20),
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              elevation: 10,
              backgroundColor: Colors.amber,
            onPressed: (){
               Navigator.push(context, 
                          MaterialPageRoute(builder: (builder)=>OrderPage()));
            },
            child: Icon(Icons.shopify_outlined,color: Colors.black,),
            ),
          ),


        ]
        ),
      ),
    );
  }
}