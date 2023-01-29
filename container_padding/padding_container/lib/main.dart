import 'package:flutter/material.dart';

// ignore_for_file: slash_for_doc_comments

/** In this code, the container is demonstrated. 
 Container class in flutter is a convenience widget that combines common 
painting, positioning, and sizing of widgets. 
A Container class can be used to store one or more widgets and position 
them on the screen according to our convenience. 
Basically, a container is like a box to store contents */

/** The container can take in padding as a property and apply constraints
      The padding widget can also be used entirely to set its own constrsints.
      However, the container wdget takes in more properties and is more 
      convinient to use. */

/** the padding is used to give space form the border of the container 
      form its children. Observe the space between the border and the text. */

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          color: Colors.purple,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          child: const Text("Hello! i am inside a container!",
              style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
