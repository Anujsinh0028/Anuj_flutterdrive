import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:no_59/login.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool firstvalue = false;
  bool secondvalue = false;
  bool thirdvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.purple
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            Center(
              child: SingleChildScrollView(
                child: Container(
                padding: EdgeInsets.all(25),
                // height: MediaQuery.sizeOf(context).height / 2,
                width: MediaQuery.sizeOf(context).width / 1.2,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [BoxShadow(blurRadius: 0, color: Color.fromARGB(255, 243, 246, 249))]),
                    
                    child: Column(children: [
                    
                       Center(
                    child: Text(
                  "Registration Form",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.purple),
                )),
                    
                SizedBox(height: 20,),
                TextField(  
                  
                  decoration: InputDecoration(
                    hintText: "name",
                    hintStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(Icons.perm_identity,color: Colors.purple,)
                  ),
                ),
                TextField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    hintText: "Mobile number",
                     hintStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(Icons.phone_android,color: Colors.purple,)
                    
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                     hintStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(Icons.email_outlined,color: Colors.purple,)
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                     hintStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(Icons.password,color: Colors.purple,)
                  ),
                ),
                    
                SizedBox(height: 20,),
                    
                Text("HOBBY:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),),
                    
                Row(
                  children: [
                    Checkbox(
                      fillColor: MaterialStatePropertyAll(Colors.purple),
                        value: this.firstvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            this.firstvalue = value!;
                          });
                        }),
                         Text("Sport",style: TextStyle(color: Colors.purple),),
                  ],
                ),
                    
                  Row(
                  children: [
                    Checkbox(
                       fillColor: MaterialStatePropertyAll(Colors.purple),
                        value: this.secondvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            this.secondvalue = value!;
                          });
                        }),
                         Text("Reading",style: TextStyle(color: Colors.purple),),
                  ],
                ),
                    
                  Row(
                  children: [
                    Checkbox(
                       fillColor: MaterialStatePropertyAll(Colors.purple),
                        value: this.thirdvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            this.thirdvalue = value!;
                          });
                        }),
                         Text("Gaming",style: TextStyle(color: Colors.purple),),
                  ],
                ),
                           
                           
                           
                    
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => home_screen()));
                  },
                  child: Text("Register Now"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.purple,
                    ),
                  ),
                ),
                    ]
                    ),
                          
                          
                ),
              ),
            ),
            
          ],
       
        ),
      ),
    );
  }
}
