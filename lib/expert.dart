import 'package:flutter/material.dart';
class expertscreen extends StatefulWidget {
  const expertscreen({Key? key}) : super(key: key);

  @override
  State<expertscreen> createState() => _expertscreenState();
}

class _expertscreenState extends State<expertscreen> {
  String time='Available Times';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
       title: Text('EXPERT'),

        ),
        body : Padding(
        padding: const EdgeInsets.all(20.0),
    child : SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
      TextFormField(
        decoration: InputDecoration(
            labelText: 'Name ',
            border: OutlineInputBorder(
            )
        ),
      ),
      SizedBox(
        height: 40.0,
      ),
      TextFormField(
        decoration: InputDecoration(
            labelText: 'Experiences ',
            border: OutlineInputBorder(
            )
        ),
      ),
      SizedBox(
        height: 40.0,
      ),
      TextFormField(
        decoration: InputDecoration(
            labelText: 'communication',
            border: OutlineInputBorder(
            )
        ),
      ),
      SizedBox(
        height: 40.0,
      ),
          Container(
            color: Colors.blueAccent,
            width: double.infinity,
            height: 40.0,
            child: PopupMenuButton(
                    child: Center(child: Text('$time',
                      style: TextStyle(
                      color:   Colors.white,
                    ),
                    ),
                    ),
                itemBuilder:
                    (context){
                  return [
                    PopupMenuItem<int>( value :0,child: Text('8AM-10AM')),
                    PopupMenuItem<int>(value:1,child: Text('10AM-12PM')),
                    PopupMenuItem<int>(value:2,child: Text('12PM-2PM')),
                    PopupMenuItem<int>(value:3,child: Text('2PM-4PM')),
                    PopupMenuItem<int>(value:4,child: Text('4PM-6PM')),
                  ];
                },
                onSelected: (value){
                  if(value == 0){
                    setState(() {
                      time= '8AM-10AM';
                      print(time);
                    });
                  }
                  if(value ==1){
                    setState(() {
                      time= '10AM-12PM';
                      print(time);
                    });
                  }
                  if(value == 2){
                    setState(() {
                      time= '12PM-2PM';
                      print(time);
                    });
                  }
                  if(value == 3){
                    setState(() {
                      time= '2PM-4PM';
                      print(time);
                    });
                  }
                  if(value == 4){
                    setState(() {
                      time= '4PM-6PM';
                      print(time);
                    });
                  }
                },
              ),
          ),
      ]
    ),
        ),
    ),

    );
  }
}



