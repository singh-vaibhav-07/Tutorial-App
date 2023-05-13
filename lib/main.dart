import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Awesome App"),
        ),
        body: Container(
          child: Center(child: Text("Hi, Flutter Developers")),
        ),
      ),
    );
  }
}
