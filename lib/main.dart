import 'package:flutter/material.dart';
import 'package:mobil_app/altBar.dart';
import 'package:mobil_app/textField.dart';
import 'package:mobil_app/ustBarveIcerikCard.dart';
import 'package:mobil_app/ustButtons.dart';
import 'package:mobil_app/yaziAdmin.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 94.7 / 100,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              /************* */
              ustButtons(),
              /************* */
              yaziAdmin(),
              /************* */
              textField(),
              /************** */
              Expanded(
                /*********************** */
                child: ustBarveIcerikCard(),
                /************************ */
              ),
            ],
          ),
        ),
      ),

      /********************** */
      floatingActionButton: altBar(),
      /********************** */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
