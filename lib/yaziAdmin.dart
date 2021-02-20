import 'package:flutter/material.dart';

class yaziAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
