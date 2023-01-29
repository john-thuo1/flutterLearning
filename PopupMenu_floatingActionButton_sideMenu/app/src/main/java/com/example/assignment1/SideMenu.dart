import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Side Menu'),
                ),
                body: Center(
                    child: Text('Welcome to my app'),
                ),
                // Create the drawer
                drawer: Drawer(
                    child: ListView(
                        children: <Widget>[
                            DrawerHeader(
                                child: Text('Menu'),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                ),
                            ),
                            ListTile(
                                leading: Icon(Icons.home),
                                title: Text('Home'),
                                onTap: () {
                                    // Navigate to home page
                                    Navigator.pushReplacementNamed(context, '/home');
                                },
                            ),
                            ListTile(
                                leading: Icon(Icons.settings),
                                title: Text('Settings'),
                                onTap: () {
                                    // Navigate to settings page
                                    Navigator.pushReplacementNamed(context, '/settings');
                                },
                            ),
                            ListTile(
                                leading: Icon(Icons.info),
                                title: Text('About'),
                                onTap: () {
                                    // Navigate to about page
                                    Navigator.pushReplacementNamed(context, '/about');
                                },
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}

