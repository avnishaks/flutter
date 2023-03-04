/*
Introduction to Flutter :- 

1. Widget in Flutter 
2. Basic App :- ( Basic UI Element in Flutter)
3. Layout in Flutter


[Each and Every element which we see on the Screen is the Widget]

runApp-> root widget where all the component of the widget will come


1. Material App define the certain theme called Material Theme and also provide the direction.
2. Scaffold does : Basically helps us to make the new page (give the width and height)
Scaffold Widget create different general widget use in the Mobile Application Development 
Each of the Widget conatins the different properties which it hold to show the use case of mobile 
Development.

Eg : AppBar class different number of the properties used , we can google it and explore it.



*/

import 'package:flutter/material.dart';

main() {
  void myfunction(){
    print("AKS");
  }
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
       leading: Text("Leader of the Board"),
        title: Text("My Personal Blog"),
      ),
      drawer:Text("Swipe Feature"),
      floatingActionButton:FloatingActionButton(
        onPressed:myfunction,
        child: Text("+"),
      ),
      body: Text("Body of the our Application"),
    ),
  ));
}
