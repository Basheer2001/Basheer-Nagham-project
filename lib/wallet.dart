import 'package:flutter/material.dart';
import 'choose.dart';
class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  var formkey= GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Please Enter Money to Pay'),),
    body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView (
    child: Form(
      key: formkey,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      SizedBox(
      height: 40,
      ),
      TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return 'Please You Must To Pay To Continue  ';
          }
          return null;
        },
      keyboardType: TextInputType.phone,
      decoration:InputDecoration(
      prefixIcon: Icon(Icons.monetization_on),
      labelText: 'Pay ',
      border: OutlineInputBorder(),
      ) ,
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: double.infinity,
          color: Colors.blueAccent,
          child: MaterialButton(
            onPressed: (){
                if (formkey.currentState!.validate()){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => choose(),
                    ),
                  );

                }
            },
            child: Text(
              'Done ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        ],
      ),
    ),
    ),
    ),
    );
  }
}
