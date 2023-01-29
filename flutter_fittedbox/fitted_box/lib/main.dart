import 'package:flutter/material.dart';

// in this code we will use two containers to demonstrate the FittedBox.
// both containers have same hight and width properties
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GeeksforGeeks'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(height: 10),

              // Without FittedBox

              /** this container is not wrapped in the fitted box.
              It has the text "Do i have fittedbox?" as its child.
              Since the container has limited height and width, 
              it can only accomodate partial text */

              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.green)),
                width: 80,
                height: 20,
                child: const Text('Do i have fittedbox?'),
              ),

              const SizedBox(
                height: 12,
              ),

              // With FittedBox
              /** the text widget is wrapped with FittedBox, with same 
              constraints as passed in the first container
              It has the text "Do i have fittedbox?" as its child. 
              Herre, the fitted box will scale down the text to fit into the 
              Container so the entire text will be accomodated */

              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.green),
                ),
                width: 80,
                height: 20,
                child: const FittedBox(child: Text('Do i have fittedbox?')),
              ),

              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
