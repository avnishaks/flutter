import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double days = 30;
    String name = "Avnish";
    var st = 20; // Take any data type value
    dynamic val = 100;
    bool isMale = true;
    num temp = 30.8;
    const pi = 3.14; // Declaring the constant variable , can't be modified
    final lis = [
      1,
      2,
      3,
      4
    ]; // We can add the more element in the list , but not in the const
    lis.add(10);
    for (int i = 0; i < lis.length; i++) {
      print(lis[i]);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hey Its $name and age ${days}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
