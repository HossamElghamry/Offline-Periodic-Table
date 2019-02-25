import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Offline Periodic Table",
    home: Home(),
    theme: ThemeData(
        textTheme: TextTheme(
      title: TextStyle(color: Colors.white),
      body1: TextStyle(color: Colors.white),
      display1: TextStyle(color: Colors.white),
    )),
  ));
}
