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


Type of Widget in Scaffold :- 

   void function for onpress method of floatingActionButton:- 

   void myfunction(){
    print("AKS");
  }

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


  --------------------------------------------------

  Wrapping of the Widget :- 

   home: Scaffold(
      body: Text("Hello World"),
    ),

  -> Text message is not coming properly , hence we have to use the proper formating for the Widget
  So we have to use the concept of Wrapping of the Widget ( For the Unsafe Area , to use the Safe 
  Area we have to wrap the widget)

  runApp(MaterialApp(
  home: Scaffold(
      body: SafeArea(
        child: Text(
          "AKS",
          style: TextStyle(
              fontSize: 120,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoMono',
              color: Colors.red.shade900),
        ),
      ),
    ),
  ));



  // Guesture Detactor and Child to provide action the Tapping over it 
   child: GestureDetector(
            onTap: myfunction,
            child: Text(
              "AKS",
              style: TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                  color: Colors.red.shade900),
            ),
          ),

---------------------------------------------------

  // Instead of GestureDetector we can use one of the feature
  // ElevatedButton , built by Google Engineers.

  
-----------------------------------------------------

Conatiner in Flutter :- 





*/

import 'package:flutter/material.dart';

main() {
  void myfunction() {
    print("Avnish Singh");
  }

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Conatiner Screen"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: Text("Avnish"),
        ),
      ),
    ),
  ));
}
