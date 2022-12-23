import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'registeruser.dart';
class ExpertProfile extends StatefulWidget {
@override
_ProfileState createState() => _ProfileState();
}
////nn//////
class _ProfileState extends State<ExpertProfile> {
  bool circular = false;
  PickedFile? _imageFile;   // edits
  final ImagePicker _picker = ImagePicker();
  String time ='Available Times';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('EXPERT'),

      ),
      body :
      Padding(
        padding: const EdgeInsets.all(20.0),
        child : SingleChildScrollView(

          child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children:[

                imageProfile(),
                SizedBox(
                  height: 40.0,
                ),
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

      //
    // body: Padding(
    //       padding: const EdgeInsets.all(20.0),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           SizedBox(
    //             height: 40,
    //           ),
    //           imageProfile(),
    //
    //
    //
    //         ],
    //       ),
    //     )
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: _imageFile == null ? AssetImage("assets/profile.jpg") : FileImage(File(_imageFile!.path)) as ImageProvider,

        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

Widget bottomSheet() {
  return Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        Text(
          "Choose Profile photo",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ElevatedButton.icon(
            icon: Icon(Icons.camera),
            onPressed: () {
              takePhoto(ImageSource.camera);
            },
            label: Text("Camera"),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.image),
            onPressed: () {
              takePhoto(ImageSource.gallery);
            },
            label: Text("Gallery"),
          ),
        ])
      ],
    ),
  );
}
void takePhoto(ImageSource source) async {
  final pickedFile = await _picker.getImage(
    source: source,
  );
  setState(() {
    _imageFile = pickedFile!;
  });
} }
