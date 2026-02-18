import 'package:flutter/material.dart';

class SehirSecim extends StatefulWidget {
  const SehirSecim({super.key});

  @override
  State<StatefulWidget> createState() {
    return SehirSecimState();
  }
}

class SehirSecimState extends State<SehirSecim> {
  var sehirler = ["Ankara", "İstanbul", "İzmir"];
  String? seciliSehir = "Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Şehir Seçim")),
      body: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: sehirler.map((String deger) {
              return DropdownMenuItem<String>(value: deger, child: Text(deger));
            }).toList(),
            value: seciliSehir,
            onChanged: (String? deger) {
              setState(() {
                seciliSehir = deger;
              });
            },
          ),
          Text("Seçtiğiniz şehir: $seciliSehir"),
        ],
      ),
    );
  }
}
