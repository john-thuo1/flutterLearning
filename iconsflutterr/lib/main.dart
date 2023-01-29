import 'package:flutter/material.dart';

void main() {
  // Bar color
  const barColor = Color(0xFF26ae60);
  // Background Color
  const bgColor = Color(0xFFDAE0E2);

  var app = MaterialApp(
    home: Scaffold(
      // Implementing flutter icons
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.build),
        // Other examples of icons
        // 1. Icons.add
        // 2. Icons.remove
        // Check the material.io for all types of icons
        onPressed: () {}),
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('Instagram'),
        backgroundColor: barColor,
        ),
        ),

  );
  runApp(app);
}