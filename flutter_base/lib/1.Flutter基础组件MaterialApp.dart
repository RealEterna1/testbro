import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "Flutter组件初体验",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 10, 0, 0),
      ),
      home: Scaffold(),
    ),
  );
}
