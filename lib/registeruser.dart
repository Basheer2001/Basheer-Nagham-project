import 'package:flutter/material.dart';
   class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('USER'),
        ),
    body : Padding(
      padding: const EdgeInsets.all(20.0),
    child : SingleChildScrollView(
       child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
       children:[
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Name',
          border: OutlineInputBorder(
          )
        ),
      ),
         SizedBox(
           height: 20.0,
         ),
         TextFormField(
           decoration: InputDecoration(
               labelText: 'Email',
               border: OutlineInputBorder(
               )
           ),
         ),
         SizedBox(
           height: 30.0,
         ),
         TextFormField(
           obscureText: true,
           decoration: InputDecoration(
               labelText: 'Password',
               border: OutlineInputBorder(
               )
           ),
           keyboardType: TextInputType.visiblePassword,
         ),

         SizedBox(
           height: 30.0,
         ),
         TextFormField(
           obscureText: true,
           decoration: InputDecoration(
               labelText: 'confirm Password',
               border: OutlineInputBorder(
               )
           ),
           keyboardType: TextInputType.visiblePassword,
         ),

         SizedBox(
           height: 24,),
         Container(
           width: double.infinity,
           color: Colors.blueAccent,
           child: MaterialButton(
             onPressed: (){
             },
             child: Text(
               'LOG IN' ,
               style: TextStyle(
                 color:  Colors.white60  ,
               ),
             ),
           ),
         ),
       ],
     ),
    ),
    )
    );
  }
}




