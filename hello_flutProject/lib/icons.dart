import 'package:flutter/material.dart';

void main() {
  const barColor = Color(0xFF26ae60);
  const bgColor = Color(0xFFDAE0E2);
  var app = MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('Instagram'),
        backgroundColor: barColor,
        ),
        ),

  );
  runApp(app);
}
