import 'package:flutter/material.dart';

class Yorum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sentiment_dissatisfied_outlined,
            color: Color(0xFFFD9515c),
            size: 75,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "Yorum Yapılmamış",
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
