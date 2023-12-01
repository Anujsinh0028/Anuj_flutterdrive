// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
// ignore: camel_case_types
class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

// ignore: camel_case_types
class _home_screenState extends State<home_screen> {
  ///////////////
  ///call check box
  bool firstvalue = false;

  // alertdialoge box
  void mydiloage(BuildContext context){
    AlertDialog alertDialog = AlertDialog(

      title: const Text("Successfuly Login",style: TextStyle(color: Colors.purple),),
      content: const Text("Your Credentiel is Correct !",style: TextStyle(color: Colors.purple),),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: const Text("ok",style: TextStyle(color: Colors.purple),))
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
            decoration: const BoxDecoration(
             color: Colors.purple,
            ),
            child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // for make container in center in colunm
        children: [
          Center(
              child: Container(
            padding: const EdgeInsets.all(25),
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
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                  height: MediaQuery.sizeOf(context).height / 7.5,
                  // margin: EdgeInsets.all(20),
                  child: const Image(
                      image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/149/149071.png?w=740&t=st=1691559226~exp=1691559826~hmac=f94400d291569fbfd2de6a699c46fd2e208254fec372ae4dc97ef1b743363862",
                  )),
                ),
        
                const TextField(
        
                    // cursorColor: Colors.black,
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.purple,
                  hintText: "Email ID",
                  hintStyle: TextStyle(color: Colors.purple),
                )),
        
                const SizedBox(
                  height: 30,
                ),
        
                const TextField(
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
        
                const SizedBox(
                  height: 30,
                ),
        
                Row(
                  children: [
                    Checkbox(
                      fillColor: const MaterialStatePropertyAll(Colors.purple),
                        value: firstvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            this.firstvalue = value!;
                          });
                        }),
                        const Text("Remeber Details",style: TextStyle(color: Colors.purple)),
        
                    const SizedBox(
                      width: 25,
                    ),
                    const Text("Forgot Password?",style: TextStyle(color: Colors.purple),),
                  ],
                ),
        
                const SizedBox(
                  height: 15,
                ),
        
                ElevatedButton(
                  style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.purple,
                          ),
                  ),
                  
                  onPressed: (){
                  mydiloage(context);
                  
                },
                 child: const Text("Log In")
                ),
        
        
              ],
            ),
          ))
        ],
            ),
          ));
  }
}
