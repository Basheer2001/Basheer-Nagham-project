import 'dart:convert';

import 'package:flutter/material.dart';
import 'registeruser.dart';
import 'package:http/http.dart' as http;
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Future loginuser(String email,String pass)async{
    print("111");
var response = await http.post(
  Uri.parse('http://192.168.43.182:8000/api/login'),
  body:jsonEncode({
    'email':email,
    'password':pass,
  }),
  headers: {"Accept":"application/json"}
);
print("response is ${response.body}");
    print("response is ${response.statusCode}");
if(response.statusCode==201)
   {
     var js=jsonDecode(response.body);
     String token=js['7|wKDLDaz2Ug0AY2HF8WRBA6ru1XRssm1sX3f3f5wk'];
     print('the token is $token');


   }
else
  {
print("sorry");
   }
  }
  var formkey= GlobalKey<FormState>();
  var useremail=TextEditingController();
  var userpassword=TextEditingController();
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