import 'package:flutter/material.dart';
// import 'package:login/second_screen.dart';
import 'package:no_59/registration.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  ///////////////
  ///call check box
  bool firstvalue = false;

  // alertdialoge box
  void mydiloage(BuildContext context){
    AlertDialog alertDialog = AlertDialog(

      title: Text("Successfuly Login",style: TextStyle(color: Colors.purple),),
      content: Text("Your Credentiel is Correct !",style: TextStyle(color: Colors.purple),),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("ok",style: TextStyle(color: Colors.purple),))
      ],
    );

    showDialog(context: context, builder: (BuildContext context){
      return alertDialog;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
             color: Colors.purple,
            ),
            child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // for make container in center in colunm
        children: [
          Center(
              child: Container(
            padding: EdgeInsets.all(25),
            // margin: EdgeInsets.only(top: 90,bottom: 90),
            height: MediaQuery.sizeOf(context).height / 2,
            width: MediaQuery.sizeOf(context).width / 1.2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                // boxShadow: [BoxShadow(blurRadius: 30, color: Colors.red)]
                ),
        
            child: Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width / 4,
                  height: MediaQuery.sizeOf(context).height / 7.5,
                  // margin: EdgeInsets.all(20),
                  child: Image(
                      image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/149/149071.png?w=740&t=st=1691559226~exp=1691559826~hmac=f94400d291569fbfd2de6a699c46fd2e208254fec372ae4dc97ef1b743363862",
                  )),
                ),
        
                TextField(
        
                    // cursorColor: Colors.black,
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.purple,
                  hintText: "Email ID",
                  hintStyle: TextStyle(color: Colors.purple),
                )),
        
                SizedBox(
                  height: 30,
                ),
        
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Colors.purple,
                    suffixIcon: Icon(Icons.remove_red_eye),
                    suffixIconColor: Colors.purple,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.purple),
                  ),
                  obscureText: true,
                ),
        
                SizedBox(
                  height: 30,
                ),
        
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                        fillColor: MaterialStatePropertyAll(Colors.purple),
                          value: this.firstvalue,
                          onChanged: (bool? value) {
                            setState(() {
                              this.firstvalue = value!;
                            });
                          }),
                          Text("Remeber Details",style: TextStyle(color: Colors.purple)),
        
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        child: Text("Forgot Password?",style: TextStyle(color: Colors.purple),),
                      ),
                    ],
                  ),
                ),
        
                SizedBox(
                  height: 15,
                ),
        
                Container(
        child: ElevatedButton(
          style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.purple,
                  ),
          ),
          
          onPressed: (){
          mydiloage(context);
          
        },
         child: Text("Log In")
        ),
            ),
        
        
              ],
            ),
          ))
        ],
            ),
          ));
  }
}
