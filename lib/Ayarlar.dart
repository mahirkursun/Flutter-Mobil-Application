import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ayarlar extends StatelessWidget {
  final controller = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: 250,
            child: PageView(
              controller: controller,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 118.0),
                            child: Text(
                              "Çağrı",
                              style: TextStyle(
                                color: Color(0xFFFD9515c),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.people,
                                    color: Color(0xFFFD9515c),
                                  ),
                                  Text(
                                    "Herkes",
                                    style: TextStyle(
                                        color: Color(0xFFFD9515c),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.event_note_sharp,
                                color: Color(0xFFFD9515c),
                              ),
                              Text(
                                "Avukatlar",
                                style: TextStyle(
                                    color: Color(0xFFFD9515c), fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.person_add_disabled,
                                color: Color(0xFFFD9515c),
                              ),
                              Text(
                                "Hiç kimse",
                                style: TextStyle(
                                    color: Color(0xFFFD9515c), fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xFFFD9515c),
                        indent: 55,
                        endIndent: 55,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 112.0),
                            child: Text(
                              "Mesaj",
                              style: TextStyle(
                                color: Color(0xFFFD9515c),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.people,
                                    color: Color(0xFFFD9515c),
                                  ),
                                  Text(
                                    "Herkes",
                                    style: TextStyle(
                                        color: Color(0xFFFD9515c),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.event_note_sharp,
                                color: Color(0xFFFD9515c),
                              ),
                              Text(
                                "Avukatlar",
                                style: TextStyle(
                                    color: Color(0xFFFD9515c), fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.person_add_disabled,
                                color: Color(0xFFFD9515c),
                              ),
                              Text(
                                "Hiç kimse",
                                style: TextStyle(
                                    color: Color(0xFFFD9515c), fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xFFFD9515c),
                        indent: 55,
                        endIndent: 55,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 175.0),
                            child: Text(
                              "Bildirim",
                              style: TextStyle(
                                color: Color(0xFFFD9515c),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.check_outlined,
                                    color: Color(0xFFFD9515c),
                                  ),
                                  Text(
                                    "Açık",
                                    style: TextStyle(
                                        color: Color(0xFFFD9515c),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12, right: 15.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.close,
                                  color: Color(0xFFFD9515c),
                                ),
                                Text(
                                  "Kapalı",
                                  style: TextStyle(
                                      color: Color(0xFFFD9515c), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Banka Bilgileriniz",
                      style: TextStyle(
                          color: Color(0xFFFD9515c),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFFD9515c),
                      indent: 55,
                      endIndent: 55,
                    ),
                    Text(
                      "IBAN numarası sizin adınıza olmalıdır!",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFbc4b4f),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 205),
                              child: Text(
                                "Iban Numaranız",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(top: 14, left: 5),
                                  filled: true,
                                  fillColor: Color(0xFFFbc4b4f),
                                  hintText: 'TR00 0000 0000 0000 0000 0000 00',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  suffixIcon: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFbc4b4f),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 205),
                              child: Text(
                                "Banka Adı / Şubesi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(top: 14, left: 5),
                                  filled: true,
                                  fillColor: Color(0xFFFbc4b4f),
                                  hintText: 'ISBANK',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  suffixIcon: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Onaylı Üyelik",
                      style: TextStyle(
                          color: Color(0xFFFD9515c),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xFFFD9515c),
                      indent: 55,
                      endIndent: 55,
                    ),
                    Text(
                      ".....",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
