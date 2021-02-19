import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobil_app/Ayarlar.dart';

import 'package:mobil_app/OdemeKazanc.dart';

import 'package:mobil_app/Yorum.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFD9515c),
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  Color black54 = Colors.black54;
  Color black54_1 = Colors.black54;
  Color black54_2 = Colors.black54;
  Color black54_3 = Colors.black54;

  int seciliSayfa = 0;
  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
    });
  }

  Widget sayfaGoster(int seciliSayfa) {
    if (seciliSayfa == 0) {
      return Yorum();
    } else if (seciliSayfa == 1) {
      return Ayarlar();
    } else if (seciliSayfa == 2) {
      return OdemeKazanc();
    }
  }

  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 94.7 / 100,
        child: Center(
          child: Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                      icon: Icon(Icons.chevron_left),
                      color: Colors.white,
                      iconSize: 55,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(
                      flex: 45,
                    ),
                    imageProfile(),
                    Spacer(
                      flex: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.exit_to_app),
                            color: Colors.white,
                            iconSize: 40,
                            onPressed: () {
                              exit(0);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.person_pin_sharp),
                            color: Colors.white,
                            iconSize: 40,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text(
                        "Admin ",
                        style: TextStyle(
                            color: Color(0xFFFeba3b4),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Icon(
                        Icons.beenhere_outlined,
                        color: Colors.green[600],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 94 / 100,
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 4, left: 35),
                        filled: true,
                        fillColor: Color(0xFFFbc4b4f),
                        hintText: 'Admin benim :)',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFeba3b4),
                        ),
                        suffixIcon: Icon(
                          Icons.note,
                          color: Colors.white60,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFFD9515c), width: 0.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 67 / 100,
                      child: BottomNavigationBar(
                        elevation: 0,
                        backgroundColor: Color(0xFFFD9515c),
                        currentIndex: seciliSayfa,
                        onTap: sayfaDegistir,
                        type: BottomNavigationBarType.fixed,
                        iconSize: 35,
                        items: <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Container(
                              width: 70.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFbc4b4f),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.message,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            title: SizedBox(
                              height: 0,
                            ),
                          ),
                          BottomNavigationBarItem(
                            icon: Container(
                              width: 70.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFbc4b4f),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            title: SizedBox(
                              height: 0,
                            ),
                          ),
                          BottomNavigationBarItem(
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Container(
                                width: 70.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFbc4b4f),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.euro_symbol,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                            title: SizedBox(
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFbc4b4f),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          return showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Padding(
                                padding: const EdgeInsets.only(left: 24.0),
                                child: Text(
                                  "Soru ve önerilerinizi bize yazın :)",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              content: SizedBox(
                                height: 264,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              Icons
                                                  .sentiment_dissatisfied_outlined,
                                              color: black54,
                                              size: 42,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                black54 = Colors.red;
                                              });
                                            },
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.sentiment_dissatisfied,
                                              color: black54,
                                              size: 42,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                black54_1 = Colors.yellow;
                                              });
                                            },
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.emoji_emotions_outlined,
                                              color: black54,
                                              size: 42,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                black54_2 = Colors.orange;
                                              });
                                            },
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.emoji_emotions_outlined,
                                              color: black54,
                                              size: 42,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                black54_3 = Colors.green;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          width: 400,
                                          height: 150,
                                          child: Center(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                fillColor: Colors.green,
                                                filled: true,
                                                hintText: "Bir şeyler yazın",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 150,
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Gönder",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        icon: Icon(Icons.message_outlined),
                        color: Colors.white,
                        iconSize: 40,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 98 / 100,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 1),
                      child: Card(
                        color: Colors.white,
                        child: sayfaGoster(seciliSayfa),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 40,
            child: new FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.alarm,
                size: 35,
              ),
              elevation: 0,
              backgroundColor: Color(0xFFFD9515c),
            ),
          ),
          SizedBox(
            height: 40,
            child: new FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.message,
                size: 35,
              ),
              elevation: 0,
              backgroundColor: Color(0xFFFD9515c),
            ),
          ),
          new FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Anasayfa()));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(
                Icons.home_outlined,
                size: 44,
              ),
            ),
            elevation: 0,
            backgroundColor: Color(0xFFFD9515c),
          ),
          SizedBox(
            height: 40,
            child: new FloatingActionButton(
              onPressed: () {},
              child: Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFbc4b4f),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.person_sharp,
                  size: 35,
                ),
              ),
              elevation: 0,
              backgroundColor: Color(0xFFFD9515c),
            ),
          ),
          SizedBox(
            height: 40,
            child: new FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.menu,
                size: 35,
              ),
              elevation: 0,
              backgroundColor: Color(0xFFFD9515c),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget imageProfile() {
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
                  builder: ((builder) => BottomSheet()),
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

  Widget BottomSheet() {
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
                  style: TextStyle(color: Color(0xFFFD9515c), fontSize: 18),
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
                  style: TextStyle(color: Color(0xFFFD9515c), fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
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
