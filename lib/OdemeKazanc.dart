import 'package:flutter/material.dart';

class OdemeKazanc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 270,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFFD9515c),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ButtonBar(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 120,
                      child: RaisedButton(
                        color: Color(0xFFFD9515c),
                        onPressed: () {},
                        child: Text(
                          "Ödemelerim",
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      width: 120,
                      child: RaisedButton(
                        color: Color(0xFFFD9515c),
                        onPressed: () {},
                        child: Text(
                          "Kazancım",
                          style: TextStyle(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
