import 'package:flutter/material.dart';
import 'first.dart';
class UorE extends StatefulWidget {
  const UorE({Key? key}) : super(key: key);
  @override
  State<UorE> createState() => _UorEState();
}

class _UorEState extends State<UorE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: Colors.blueAccent,
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => MyApp(),
                  ),
                  );
                },
                child: Text(
                  'USER',
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
                  'EXPERT',
                  style: TextStyle(
                    color:   Colors.white,
                  ),
                ),
              ),
            ),
          ],
    ),
      )
    );
  }
}
