import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "İlk proje",
      home: Scaffold(
        appBar: AppBar(title: Text("İlk uygulamam")),
        body: Material(
          color: Colors.cyan,
          child: Center(
            child: Text(
              "Merhaba Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.black, fontSize: 50.0),
            ), // Text
          ), // Center
        ), // Material,
      ),
    ),
  ); // MaterialApp
}
