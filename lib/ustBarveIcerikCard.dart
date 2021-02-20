import 'package:flutter/material.dart';
import 'package:mobil_app/DialogMessage.dart';
import 'package:mobil_app/icerik/Ayarlar.dart';
import 'package:mobil_app/icerik/OdemeKazanc.dart';
import 'package:mobil_app/icerik/Yorum.dart';

class ustBarveIcerikCard extends StatefulWidget {
  @override
  _ustBarveIcerikCardState createState() => _ustBarveIcerikCardState();
}

class _ustBarveIcerikCardState extends State<ustBarveIcerikCard> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
            /********* */
            DialogMesaj(),
            /********* */
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
    );
  }
}
