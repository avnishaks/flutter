import 'package:flutter/material.dart';

List<Color> myColors = [
  Colors.red,
  Colors.yellow,
  Colors.blue,
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHome(),
    ));

// ignore: camel_case_types
class myHome extends StatelessWidget {
  const myHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemBuilder: (context, index) => getMyContainer(index),
      itemCount: 3,
    )));
  }

  Widget getMyContainer(int index) {
    return Container(
      height: 250,
      color: myColors[index],
    );
  }
}
