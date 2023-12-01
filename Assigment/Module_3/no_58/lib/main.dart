import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BackgroundColorApp(),
    );
  }
}

class BackgroundColorApp extends StatefulWidget {
  @override
  _BackgroundColorAppState createState() => _BackgroundColorAppState();
}

class _BackgroundColorAppState extends State<BackgroundColorApp> {
  double redValue = 0.0;
  double greenValue = 0.0;
  double blueValue = 0.0;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Color.fromRGBO(
      redValue.toInt(),
      greenValue.toInt(),
      blueValue.toInt(),
      1.0,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Background Color App'),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' SeekBars ',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Red'),
                  SizedBox(
                    width: 200,
                    child: Slider(
                      value: redValue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          redValue = value;
                        });
                      },
                    ),
                  ),
                  Text('${redValue.toInt()}'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Green'),
                  SizedBox(
                    width: 200,
                    child: Slider(
                      value: greenValue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          greenValue = value;
                        });
                      },
                    ),
                  ),
                  Text('${greenValue.toInt()}'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Blue'),
                  SizedBox(
                    width: 200,
                    child: Slider(
                      value: blueValue,
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                          blueValue = value;
                        });
                      },
                    ),
                  ),
                  Text('${blueValue.toInt()}'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
