import 'package:flutter/material.dart';

List<Color> myColors = [
  Colors.red,
  Colors.yellow,
  Colors.blue,
  Colors.brown,
  Colors.green
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHome(),
    ));

class myHome extends StatelessWidget {
  const myHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ...myColors.map((color) => getMyContainer(color)).toList(),
          ElevatedButton(onPressed: () => null, child: Text("Button"))
        ]),
      ),
    );
  }

  Widget getMyContainer(Color color) {
    return Container(
      width: 50,
      color: color,
    );
  }
}
