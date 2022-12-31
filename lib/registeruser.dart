import 'package:flutter/material.dart';
   class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  var formkey= GlobalKey<FormState>();
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
       child: Form(
         key: formkey,
         child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
         children:[
      TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return 'Name must not be embty ';
          }
          return null;
        },
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
             validator: (value){
               if(value!.isEmpty){
                 return 'Email must not be embty ';
               }
               return null;
             },
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
             validator: (value){
               if(value!.isEmpty){
                 return 'Passwor must not be embty ';
               }
               return null;
             },
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
             validator: (value){
               if(value!.isEmpty){
                 return 'confirm Password must not be embty ';
               }
               return null;
             },
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
    if (formkey.currentState!.validate()){

    }
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
    ),
    )
    );
  }
}




