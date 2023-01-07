import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'wallet.dart';
import 'logout.dart';
   class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  var formkey= GlobalKey<FormState>();
  @override
  Widget build (BuildContext context) {
    return Scaffold(
        drawer: logout(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('21'.tr),
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
            return '24'.tr;
          }
          return null;
        },
          decoration: InputDecoration(
            labelText: '23'.tr,
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
                 return '26'.tr;
               }
               return null;
             },
             decoration: InputDecoration(
                 labelText: '25'.tr,
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
                 return '28'.tr;
               }
               return null;
             },
             obscureText: true,
             decoration: InputDecoration(
                 labelText: '27'.tr,
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
                 return '30'.tr;
               }
               return null;
             },
             obscureText: true,
             decoration: InputDecoration(
                 labelText: '29'.tr,
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
               onPressed: () {
                 if (formkey.currentState!.validate()) {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => wallet(),

                     ),
                   );
                 }
               },
               child: Text(
                 '31'.tr ,
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




