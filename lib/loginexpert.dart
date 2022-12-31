import 'package:dupro/ExpertProfile.dart';
import 'package:flutter/material.dart';
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
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('LOG IN'),
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
                        TextButton(onPressed:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExpertProfile(),
                            ),
                          );
                        } ,child: Text('register'),
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


