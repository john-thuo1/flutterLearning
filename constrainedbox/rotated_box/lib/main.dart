import 'package:flutter/material.dart';
import 'package:rotated_box/images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The "DEBUG" banner is in debug mode by default
      debugShowCheckedModeBanner: false, //Set it to false to turn it off
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF832685),
        primaryColorLight: const Color(0xFFC81379),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
      ),
      home: const MyHomePage(
        title: 'Flutter Demo',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Rotated Box';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
        centerTitle: true,
      ),
      body: const Center(
        //Rotated box usage
        // This rotates its child by an integral number of quarter turns
        // it takes the quater turns attribute
        child: RotatedBox(
          // the quaterturns attribute tells how many
          // clockwise rotations the child makes
          quarterTurns: 1,
          child: ClipPath(
            child: Image(
              //the image is the child on which the turn is applied
              image: AssetImage(captainAmerica),
              height: 200.0,
              width: 150.0,
              //the BoxFit.cover makes the child as small as possible
              // while keeping the child within the bounds of the parents widget
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
