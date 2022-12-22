import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'registeruser.dart';
class Profile extends StatefulWidget {

@override
_ProfileState createState() => _ProfileState();
}
////nn///////.
class _ProfileState extends State<Profile> {
  bool circular = false;
   late PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              imageProfile(),



            ],
          ),
        )
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage:AssetImage("assets/profile.jpg"),
         // ###replece  //_imageFile == null ? AssetImage("assets/profile.jpg") : FileImage(File(_imageFile.path)),
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
