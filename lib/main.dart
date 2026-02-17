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
        body: const Material(
          color: Colors.cyan,
          child: Center(
            child: Text(
              "Hello Flutter!",
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.black, fontSize: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}
