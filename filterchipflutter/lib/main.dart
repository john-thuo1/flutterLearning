import 'package:flutter/material.dart';

// To implement a Filter Chip 
// 1. Create a Scaffold
// 2. Create filter chips
// 3. Create a layout by using selcted , onSelected property


// Scaffold widgets implement the basic material design visual layout of the app structure
// It contains widgets such as AppBars, SnackBars, Drawers
void main() {
  runApp(const MyApp());
}

// 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

    // This method is rerun every time setState is called, for instance as done
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter Chips',
    
    // This is the theme of your application.
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}


//  Filter chips are utilized when we believe that the client should choose different choices from a gathering of chips. 
//  Flutter gives a widget called FilterChip which permits us to add a filter chip to our application

class Tech
{
  String label;
  Color color;
  bool isSelected;
  Tech(this.label, this.color, this.isSelected);
}
 
class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
    // Creates a list of chips choices to be displayed and their accompanying attributes
    // e.g India will be set to brown color 

  final List<Tech> _chipsList = [
    Tech("India", Colors.brown, false),
    Tech("Canada", Colors.deepPurple, false),
    Tech("London", Colors.red, false),
    Tech("Paris", Colors.cyan, false),
    Tech("Japan", Colors.black54, false),
    Tech("Maldives", Colors.blueAccent, false),
    Tech("Switzerland", Colors.lightGreen, false)
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Chips"),
        ),
        body: Wrap(
          spacing: 8,
          direction: Axis.horizontal,
          children: techChips(),
        )
    );
  }
 
// Filter chips need 2 properties to be specified
// label and onSelected callback need to be specified
// The filter chips use these properties to 
// 1. update the selected or unselected state of choice chip and 
// 2. perform some actions

  List<Widget> techChips () {
    List<Widget> chips = [];
    for (int i=0; i< _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left:10, right: 5),
        // FilterChip widget which must have a label and onSelected variables
        child: FilterChip(
          label: Text(_chipsList[i].label),
          labelStyle: const TextStyle(color: Colors.white),
          backgroundColor: _chipsList[i].color,
          // OnSelected is used when the chip should change between 
          // selected and deselected states as shown.
          // The onSelected and TappableChipAttributes.onPressed callbacks,
          // must not both be specified at the same time.
          selected: _chipsList[i].isSelected,
          onSelected: (bool value)
          {
            setState(() {
              _chipsList[i].isSelected = value;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}