import 'dart:convert';

import 'package:flutter/material.dart';
import 'registeruser.dart';
import 'package:http/http.dart' as http;
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  var formkey= GlobalKey<FormState>();
  final useremail=TextEditingController();
  final userpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('LOG IN'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView (
            child: Form(
              key:formkey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: useremail,
                    onChanged:(value){
                      print(value);
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Email must not be embty ';
                      }
                        return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ) ,
                  ),
                  SizedBox(
                    height: 24,),
                  TextFormField(
                    controller: userpassword,
                    obscureText: true,
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Password must not be embty ';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffix: Icon(Icons.remove_red_eye),
                      labelText: 'password',
                      border: OutlineInputBorder(),
                    ) ,
                  ),
                  SizedBox(
                    height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('log in'),
                      TextButton(onPressed:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                      },
                       child: Text('register'),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blueAccent,
                    child: MaterialButton(
                      onPressed: (){
                        if (formkey.currentState!.validate()){
                        }
                        loginuser(useremail.text, userpassword.text);
                      },
                      child: Text(
                        'LOG IN',
                        style: TextStyle(
                          color:   Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}