import 'package:flutter/material.dart';

class ogrenciform extends StatefulWidget {
  const ogrenciform({super.key});

  @override
  State<ogrenciform> createState() {
    return ogrenciformState();
  }
}

class ogrenciformState extends State<ogrenciform> {
  String ogrenciAdi = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Öğrenci Formu")),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (String isim) {
              setState(() {
                ogrenciAdi = isim;
              });
            },
          ),
          Text("Merhaba : " + ogrenciAdi),
        ],
      ),
    );
  }
}
