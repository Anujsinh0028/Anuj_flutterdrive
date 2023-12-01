import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:no_59/login.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  bool firstvalue = false;
  bool secondvalue = false;
  bool thirdvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.purple
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            Center(
              child: SingleChildScrollView(
                child: Container(
                padding: const EdgeInsets.all(25),
                // height: MediaQuery.sizeOf(context).height / 2,
                width: MediaQuery.sizeOf(context).width / 1.2,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [BoxShadow(blurRadius: 0, color: Color.fromARGB(255, 243, 246, 249))]),
                    
                    child: Column(children: [
                    
                       const Center(
                    child: Text(
                  "Registration Form",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.purple),
                )),
                    
                const SizedBox(height: 20,),
                const TextField(  
                  
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
                  decoration: const InputDecoration(
                    hintText: "Mobile number",
                     hintStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(Icons.phone_android,color: Colors.purple,)
                    
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                     hintStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(Icons.email_outlined,color: Colors.purple,)
                  ),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                     hintStyle: TextStyle(color: Colors.purple),
                    prefixIcon: Icon(Icons.password,color: Colors.purple,)
                  ),
                ),
                    
                const SizedBox(height: 20,),
                    
                const Text("HOBBY:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),),
                    
                Row(
                  children: [
                    Checkbox(
                      fillColor: const MaterialStatePropertyAll(Colors.purple),
                        value: firstvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            firstvalue = value!;
                          });
                        }),
                         const Text("Sport",style: TextStyle(color: Colors.purple),),
                  ],
                ),
                    
                  Row(
                  children: [
                    Checkbox(
                       fillColor: const MaterialStatePropertyAll(Colors.purple),
                        value: secondvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            secondvalue = value!;
                          });
                        }),
                         const Text("Reading",style: TextStyle(color: Colors.purple),),
                  ],
                ),
                    
                  Row(
                  children: [
                    Checkbox(
                       fillColor: const MaterialStatePropertyAll(Colors.purple),
                        value: thirdvalue,
                        onChanged: (bool? value) {
                          setState(() {
                            thirdvalue = value!;
                          });
                        }),
                         const Text("Gaming",style: TextStyle(color: Colors.purple),),
                  ],
                ),
                           
                           
                           
                    
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const home_screen()));
                  },
                  child: const Text("Register Now"),
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
