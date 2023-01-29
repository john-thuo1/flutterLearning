import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    // Initialize the selected value to be the first item in the list
    String _selectedValue = 'Item 1';

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Popup Menu'),
                ),
                body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Text('Selected Value: $_selectedValue'),
                            // Create the button that will display the popup menu
                            RaisedButton(
                                child: Text('Select'),
                                onPressed: () => _showPopupMenu(context),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }

    void _showPopupMenu(BuildContext context) {
        // Create the popup menu
        showMenu<String>(
            context: context,
            position: RelativeRect.fromLTRB(100, 100, 100, 100),
            items: <PopupMenuItem<String>>[
                PopupMenuItem<String>(
                    value: 'Item 1',
                    child: Text('Item 1'),
                ),
                PopupMenuItem<String>(
                    value: 'Item 2',
                    child: Text('Item 2'),
                ),
                PopupMenuItem<String>(
                    value: 'Item 3',
                    child: Text('Item 3'),
                ),
            ],
        ).then((value) {
            if (value != null) {
                setState(() {
                    _selectedValue = value;
                });
            }
        });
    }
}

