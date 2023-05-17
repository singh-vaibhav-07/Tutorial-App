// ignore_for_file: prefer_const_constructors, unnecessary_import, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vaibapp/pages/home_page.dart';
import 'package:vaibapp/pages/login_page.dart';
import 'package:vaibapp/utils/Constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(
    MaterialApp(
      title: "Awesome App",
      debugShowCheckedModeBanner: false,
      home: Constants.prefs?.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    ),
  );
}
