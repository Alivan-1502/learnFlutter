import 'package:flutter/material.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(
          top: 50.0,
          bottom: 50.0,
          left: 25.0,
          right: 45.0,
        ),
        alignment: Alignment.center,
        color: Colors.cyan,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Laptop", style: TextStyle(fontSize: 22.0)),
                Text("5000 TL", style: TextStyle(fontSize: 22.0)),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Televizyon", style: TextStyle(fontSize: 22.0)),
                Text("3000 TL", style: TextStyle(fontSize: 22.0)),
              ],
            ),
            siparisButonu(),
          ],
        ),
      ),
    );
  }
}

class siparisButonu extends StatelessWidget {
  const siparisButonu({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("sepete eklendi");
      },
      child: Text("sepete ekle"),
    );
  }
}
