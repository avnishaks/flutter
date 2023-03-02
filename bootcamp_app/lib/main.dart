/*
Introduction to Flutter :- 

1. Widget in Flutter 
2. Basic App :- ( Basic UI Element in Flutter)
3. Layout in Flutter


[Each and Every element which we see on the Screen is the Widget]

runApp-> root widget where all the component of the widget will come


1. Material App define the certain theme called Material Theme and also provide the direction.
2. Scaffold does : Basically helps us to make the new page

*/

import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My Personal Blog"),
      ),
      drawer:Text("Swipe Feature"),
    ),
  ));
}
