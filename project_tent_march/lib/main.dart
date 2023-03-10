import 'package:flutter/material.dart';

List<Color> myColors = [
  Colors.red,
  Colors.brown,
  Colors.green
];


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: true,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
             color: Colors.red,
             child:Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                TextButton(onPressed: (){}, child:Text('Monday')),
                TextButton(onPressed: (){}, child: Text('27/11/2000'))
              ],),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Lifeline',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
              
             ],)
          ),

          Container(
             color: Colors.red,
             child:Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                TextButton(onPressed: (){}, child:Text('Monday')),
                TextButton(onPressed: (){}, child: Text('27/11/2000'))
              ],),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Lifeline',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
              
             ],)
          ),

          Container(
             color: Colors.red,
             child:Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                TextButton(onPressed: (){}, child:Text('Monday')),
                TextButton(onPressed: (){}, child: Text('27/11/2000'))
              ],),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Lifeline',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
              
             ],)
          ),

         // ...myColors.map((color) => getMyContainer(color)).toList()


        ]),
      ),
    );
  }

  Widget getMyContainer(Color color) {
    return Container(
      height: 50,
      color: color,
    );
  }
}
