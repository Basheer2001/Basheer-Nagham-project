import 'package:flutter/material.dart';
void main() {
  int i ;
  runApp(MaterialApp(home: MyApp()));
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu_outlined),
    //title: Center(child: Text('Counter')),
    actions: [
    IconButton(
    onPressed: (){
    print('notifi pressed');
    },
    icon:Icon(Icons.notifications),
    ),
    // IconButton(onPressed: searchPressed,
    //   icon: Icon(Icons.search),
    // ),
    ],
    ),
    body:
    // body: Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    // children: [
    // Row(
    // mainAxisAlignment: MainAxisAlignment.center,
    // children: [
    // TextButton(
    // onPressed: () {
    // setState(() {
    // counter++;
    // print(counter);
    // });
    // },
    // child: Text(
    // 'plus',
    // style: TextStyle(
    // fontSize: 32,
    // fontWeight: FontWeight.bold,
    // ),
    // ),
    //
    //
    // ),
    // Padding(
    // padding:const EdgeInsets.symmetric(
    // horizontal: 16
    // ),
    // child: Text(
    // '$counter',
    // style: TextStyle(
    // fontSize: 32,
    // fontWeight: FontWeight.bold,
    // ),
    //
    // ),
    // ),
    // TextButton(onPressed: (){
    //
    // setState(() {
    // counter--;
    // print(counter);
    // });
    //
    // },
    // child: Text(
    // 'minus',
    // style: TextStyle(
    // fontSize: 32,
    // fontWeight: FontWeight.bold,
    // ),
    // )),
    //
    //
    //
    //
    // ],
    // )
    // ],
    // )

     // padding: const EdgeInsets.all(16),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Log in',
            style:TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
            ) ,),
          SizedBox(
            height: 24,),
          TextFormField(
            onChanged:(value){
              print(value);

            } ,
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
            // Container(
            //   child: MaterialButton(
            //
            //   ),
            // ),

          ),
          SizedBox(
            height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('log in'),
              TextButton(onPressed:(){} ,child: Text('register'),),
            ],
          ),
        ],
       ) );}}
//kyhugbhj