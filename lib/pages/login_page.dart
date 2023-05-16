// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vaibapp/bg_image.dart';
import 'package:vaibapp/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration:
                                    InputDecoration(hintText: "Username"),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                obscureText: true,
                                decoration:
                                    InputDecoration(hintText: "Password"),
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomePage()));

                              Navigator.pushNamed(context, "/home");
                            },
                            child: Text("Sign In"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black, elevation: 5),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
