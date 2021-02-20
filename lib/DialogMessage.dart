import 'package:flutter/material.dart';

class DialogMesaj extends StatelessWidget {
  Color black54 = Colors.black54;
  Color black54_1 = Colors.black54;
  Color black54_2 = Colors.black54;
  Color black54_3 = Colors.black54;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.sentiment_dissatisfied_outlined,
                              color: black54,
                              size: 42,
                            ),
                            onPressed: () {
                              black54 = Colors.red;
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.sentiment_dissatisfied,
                              color: black54,
                              size: 42,
                            ),
                            onPressed: () {
                              black54_1 = Colors.yellow;
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: black54,
                              size: 42,
                            ),
                            onPressed: () {
                              black54_2 = Colors.orange;
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: black54,
                              size: 42,
                            ),
                            onPressed: () {
                              black54_3 = Colors.green;
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8)),
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
                            style: TextStyle(color: Colors.white),
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
    );
  }
}
