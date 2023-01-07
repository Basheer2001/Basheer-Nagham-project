import 'dart:convert';
import 'logout.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'registeruser.dart';
import 'local/localControler.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Future loginuser(String email,String pass)async{
    print("111");

    print("enaillllll$email");
    var response = await http.post(
        Uri.parse('http://192.168.43.169:8000/api/login'),
        body:<String,String>
        {
          'email':email,
          'password':pass
        },
        headers: {"Accept":"application/json",

        }
    );
    print("response is ${response.body}");
    print("response is ${response.statusCode}");
    if(response.statusCode==201)
    {
      var js=jsonDecode(response.body);
      Token=js['token'];


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
      drawer: logout(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
              '4'.tr,
          ),
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
                        return '10'.tr;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: '5'.tr,
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
                        return '11'.tr;
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffix: Icon(Icons.remove_red_eye),
                      labelText: '6'.tr,
                      border: OutlineInputBorder(),
                    ) ,
                  ),
                  SizedBox(
                    height: 24,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('7'.tr,),
                      TextButton(onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                        child: Text('8'.tr,),
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
                        '9'.tr,
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