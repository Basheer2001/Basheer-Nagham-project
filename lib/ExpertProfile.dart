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
  PickedFile? _imageFile; // edits
  final ImagePicker _picker = ImagePicker();
  String Days = 'Available Days ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('EXPERT'),

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageProfile(),
              SizedBox(
                height: 40.0,
              ),
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
                    labelText: 'Address',
                    border: OutlineInputBorder(
                    )
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: 'Number',
                    border: OutlineInputBorder(
                    )
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                color: Colors.grey,
                width: double.infinity,
                height: 40.0,
                child: PopupMenuButton(
                    child: Center(child: Text('$Days',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    ),
                    itemBuilder:
                        (context) {
                      return [
                        PopupMenuItem<int>(value: 0, child: Text('Saturday')),
                        PopupMenuItem<int>(value: 1, child: Text('Sunday')),
                        PopupMenuItem<int>(value: 2, child: Text('Monday')),
                        PopupMenuItem<int>(value: 3, child: Text('Tuesday')),
                        PopupMenuItem<int>(value: 4, child: Text('Wednesday')),
                        PopupMenuItem<int>(value: 5, child: Text('Thursday')),
                      ];
                    },
                    onSelected: (value) {
                      if (value == 0) {
                        setState(() {
                          Days = 'Saturday';
                          print(Days);
                        });
                      }
                      if (value == 1) {
                        setState(() {
                          Days = 'Sunday';
                          print(Days);
                        });
                      }
                      if (value == 2) {
                        setState(() {
                          Days = 'Monday';
                          print(Days);
                        });
                      }
                      if (value == 3) {
                        setState(() {
                          Days = 'Tuesday';
                          print(Days);
                        });
                      }
                      if (value == 4) {
                        setState(() {
                          Days = 'Wednesday';
                          print(Days);
                        });
                        if (value == 5) {
                          setState(() {
                            Days = 'Wednesday';
                            print(Days);
                          });
                        }
                      };
                    }
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
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
      ),
    );



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
