import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Floating Action Button'),
                ),
                body: Center(
                    child: Text('Hello World'),
                ),
                floatingActionButton: FloatingActionButton(
                    // On press of the button, call the _showSnackBar method
                    onPressed: _showSnackBar,
                    // Set the icon for the button
                    child: Icon(Icons.add),
                ),
            ),
        );
    }

    void _showSnackBar() {
        // Show a snackbar with a message
        Scaffold.of(context).showSnackBar(
            SnackBar(
                content: Text('Button pressed!'),
            ),
        );
    }
}
