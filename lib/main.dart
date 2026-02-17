import 'package:flutter/material.dart';

void main() {
  runApp(const IlkUygulamaWidget());
}

class IlkUygulamaWidget extends StatelessWidget {
  const IlkUygulamaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "İlk proje",
      home: Scaffold(
        appBar: AppBar(title: const Text("İlk uygulamam")),
        body: Material(
          color: Colors.cyan,
          child: Center(
            child: Text(
              "Hello Flutter!${selamVer()}",
              style: TextStyle(color: Colors.black, fontSize: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}

String selamVer() {
  DateTime simdi = DateTime.now();
  int saat = simdi.hour;
  if (saat < 13) {
    return "Günaydın";
  } else if(saat < 17 ){
    return "İyi Günler!";
  } else if(saat < 20) {
    return "iyi Akşamlar";
  }else{
    return "iyi Geceler";
  }
}
