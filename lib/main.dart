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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65),
                color: Colors.black87,
              ),
              // color: Colors.black87,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              width: 200,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Text(
                        "STOP",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      // color: Colors.yellow,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                      child: Text(
                        "LOOK",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Text(
                        "GO",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
