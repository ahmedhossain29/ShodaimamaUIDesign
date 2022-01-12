import 'package:flutter/material.dart';
import 'package:shodaimamaui/FreshPage.dart';

Widget navigation() {
  return Row(
    children: [
      GestureDetector(
        onTap: () {
          var currentIndex;
          currentIndex = 0;
        },
        child: Container(
          height: 45,
          width: 50,
          color: Colors.teal[700],
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          FreshPage();
        },
        child: Container(
          height: 45,
          width: 100,
          child: Center(
              child: Text(
            "Fresh",
            style:
                TextStyle(color: Colors.teal[700], fontWeight: FontWeight.bold),
          )),
        ),
      ),
      Container(
        color: Colors.teal[700],
        height: 35,
        width: 2,
      ),
      Container(
        height: 45,
        width: 100,
        child: Center(
            child: Text(
          "Regular",
          style:
              TextStyle(color: Colors.teal[700], fontWeight: FontWeight.bold),
        )),
      ),
      Container(
        color: Colors.teal[700],
        height: 35,
        width: 2,
      ),
      Container(
        height: 45,
        width: 100,
        child: Center(
            child: Text(
          "Preorder",
          style:
              TextStyle(color: Colors.teal[700], fontWeight: FontWeight.bold),
        )),
      ),
    ],
  );
}
