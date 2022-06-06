import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Color change",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Kalam-Regular",
      ),
      home: const ColorChangeScreen(),
    );
  }
}

class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({Key? key}) : super(key: key);

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  final Random _random = Random();
  Color _color = Color(0xFFFFFFFF);
  Color _colorText = Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tap to change color"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _changeColor,
          child: Container(
            color: _color,
            child: Center(
              child: Text(
                "Hey there",
                style: TextStyle(fontSize: 30, color: _colorText),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _changeColor() {
    setState(() {
      _color = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        (1.0),
      );
      _colorText = Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        (1.0),
      );
    });
  }
}
