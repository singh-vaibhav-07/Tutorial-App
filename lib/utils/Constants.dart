import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// class Constants {
//   static SharedPreferences prefs = SharedPreferences.getInstance();
// }

class Constants {
  static SharedPreferences? prefs;

  static Future<void> initializePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }
}
