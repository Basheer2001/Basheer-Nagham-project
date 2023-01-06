import 'package:dupro/listview.dart';
import 'package:flutter/material.dart';
import 'logout.dart';
class choose extends StatefulWidget {
  const choose({Key? key}) : super(key: key);

  @override
  State<choose> createState() => _chooseState();
}

class _chooseState extends State<choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: logout(),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                color: Colors.blueAccent ,
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => listview(),
                      ),
                    );

                  },
                  child: Text(
                    'EXPERIANCES',
                    style: TextStyle(
                      color:   Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.blueAccent,
                child: MaterialButton(
                  onPressed: (){

                  },
                  child: Text(
                    'EXPERTS',
                    style: TextStyle(
                      color:   Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );;
  }
}
