import 'package:flutter/material.dart';
import 'registeruser.dart';
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('LOG IN'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
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
                        builder: (context) => Home(),
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
        ) );}
}