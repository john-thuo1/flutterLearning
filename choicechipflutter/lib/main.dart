import 'package:flutter/material.dart';


// ChoiceChips represent a single choice from a set. 
// Choice chips contain related descriptive text or categories.
void main() {
runApp(const MyThreeOptions());
}

class MyThreeOptions extends StatefulWidget {
const MyThreeOptions({super.key});

@override
State<MyThreeOptions> createState() => _MyThreeOptionsState();
}

class _MyThreeOptionsState extends State<MyThreeOptions> {
int? _value = 1;

@override
Widget build(BuildContext context) {
	return MaterialApp(
	debugShowCheckedModeBanner: false,
	// scaffold allows to
	// set the appbar and body
	home: Scaffold(
		appBar: AppBar(
		title: const Text('Flutter - Choice chip'),
		),
		body: Wrap(
		// list of length 3
		children: List.generate(
			3,
			(int index) {
			// choice chip allow us to
			// set its properties.
			return ChoiceChip(
				padding: const EdgeInsets.all(8),
				label: Text('Item $index'),
				// color of selected chip
				selectedColor: Colors.green,
				// selected chip value
				selected: _value == index,
				// onselected method
				onSelected: (bool selected) {
				setState(() {
					_value = selected ? index : null;
				});
				},
			);
			},
		).toList(),
		),
	),
	);
}
}
