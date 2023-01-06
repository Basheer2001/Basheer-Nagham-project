import 'package:dupro/ExpertProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logout.dart';
class loginexpert extends StatefulWidget {
  const loginexpert({Key? key}) : super(key: key);

  @override
  State<loginexpert> createState() => _loginexpertState();
}

class _loginexpertState extends State<loginexpert> {
  var formkey= GlobalKey<FormState>();
  @override
    Widget build(BuildContext context) {
      return Scaffold(
          drawer: logout(),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('12'.tr),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      onChanged:(value){
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return '18'.tr;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration:InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: '13'.tr,
                        border: OutlineInputBorder(),
                      ) ,
                    ),
                    SizedBox(
                      height: 24,),
                    TextFormField(
                      obscureText: true,
                      onChanged: (value){
                        print(value);
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return '19 '.tr;
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration:InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffix: Icon(Icons.remove_red_eye),
                        labelText: '14'.tr,
                        border: OutlineInputBorder(),
                      ) ,
                    ),
                    SizedBox(
                      height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('15'.tr),
                        TextButton(onPressed:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExpertProfile(),
                            ),
                          );
                        } ,child: Text('16'.tr),
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
                        },
                        child: Text(
                          '17'.tr,
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


