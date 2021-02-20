import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imageProfile extends StatefulWidget {
  @override
  _imageProfileState createState() => _imageProfileState();
}

class _imageProfileState extends State<imageProfile> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 38.0),
          child: CircleAvatar(
            radius: 45,
            backgroundImage: _imageFile == null
                ? AssetImage(
                    "resimler/person.png",
                  )
                : FileImage(File(_imageFile.path)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 30),
          child: Positioned(
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Profil Fotoğrafı Seçiniz",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFFFD9515c),
                              ),
                            ),
                            Divider(
                              indent: 55,
                              endIndent: 55,
                              thickness: 2,
                              color: Color(0xFFFD9515c),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                FlatButton.icon(
                                  icon: Icon(Icons.camera),
                                  onPressed: () {
                                    takePhoto(ImageSource.camera);
                                    Navigator.pop(context);
                                  },
                                  label: Text(
                                    "Camera",
                                    style: TextStyle(
                                        color: Color(0xFFFD9515c),
                                        fontSize: 18),
                                  ),
                                ),
                                FlatButton.icon(
                                  icon: Icon(Icons.image),
                                  onPressed: () {
                                    takePhoto(ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                  label: Text(
                                    "Galeri",
                                    style: TextStyle(
                                        color: Color(0xFFFD9515c),
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.black38,
                size: 28,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }
}
