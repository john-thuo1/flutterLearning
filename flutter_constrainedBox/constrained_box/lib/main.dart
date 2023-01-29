import 'package:flutter/material.dart';

//imported googles material design library
void main() {
  runApp(
    /**Our App Widget Tree Starts Here**/
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Constrained Box'),
          backgroundColor: Colors.greenAccent[400],
          centerTitle: true,
        ), //AppBar

        // ConstrainedBox Widget
        /**ConstrainedBox Widget is used to constrain the height 
         * and width of its child widget which is a Container.**/

        /**The constraints property takes in the BoxConstraints class
            as an object.  It puts constraints it’s child widget using the 
            functions of the BoxConstraints class. **/

        /** BoxConstraints.expanded with the height and width parameter set to
         *  200 allows the container widget to expand and fill its parent widget
         *  without need of its own height and width parameters */
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 200, width: 200),
            child: Container(
              color: Colors.green,
            ), //Container widget
          ), //ConstrainedBox
        ), //Center
      ), //Scaffold
    ), //MaterialApp
  );
}
