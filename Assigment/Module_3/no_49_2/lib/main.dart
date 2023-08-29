import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height/2.5,
              child: Image.network(
                  "https://images.pexels.com/photos/17583913/pexels-photo-17583913/free-photo-of-nevado-callangate-cusco.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
            ),
///////////////////////////////////

            Container(
                margin: EdgeInsets.only(left: 35, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // alignment: AlignmentDirectional.topEnd,
                      margin: EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Text(
                            " About Mountain ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Mount everest, India ",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black45),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Row(children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Text("42")
                      ]),
                    )
                  ],
                )),

///////////////////////////////////
            Container(
              margin: EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.blue,
                        ),
                        Text("CALL"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.route,
                          color: Colors.blue,
                        ),
                        Text("ROUTE"),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        Text("SHARE"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(35),
              child: Text(
                  "Mount Everest is a peak in the Himalaya mountain range. It is located between Nepal and Tibet, an autonomous region of China. At 8,849 meters (29,032 feet), it is considered the tallest point on Earth. In the nineteenth century, the mountain was named after George Everest, a former Surveyor General of India.The first ever recorded people to climb Everest were Edmund Hillary (a mountaineer from New Zealand) and his Tibetan guide Tenzing Norgay. They climbed the mountain in 1953 and hold the record together."),
            )
          ],
        ),
      ),
    );
  }
}
