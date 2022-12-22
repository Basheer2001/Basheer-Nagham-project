import 'package:flutter/material.dart';
import 'UorE.dart';
import 'registeruser.dart';

void main() {

  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      debugShowCheckedModeBanner: false ,
        home:UorE());

  }

}
