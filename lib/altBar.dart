import 'package:flutter/material.dart';

class altBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () {},
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
    );
  }
}
