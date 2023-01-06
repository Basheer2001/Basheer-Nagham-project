import 'package:flutter/material.dart';
import 'logout.dart';
class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: logout(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Medical consultations',
                style:
                TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Professional consulting',
                style:
                TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Psychological consulting',
                style:
                TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Family consulting',
                style:
                TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Consult a Business / Administration',
                style:
                TextStyle(
                  fontSize: 20.0,
                ),
              ),

            ]
        ),
      ),
    );
  }

}
/* ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context ,index )
          {
            return
          },
        itemCount: 5,
      )*/
