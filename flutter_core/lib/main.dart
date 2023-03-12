import 'package:flutter/material.dart';
import 'package:flutter_core/pages/home_page.dart';
import 'package:flutter_core/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bringVeg(thaila: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }

  bringVeg({required bool thaila, int amount = 20}) {
    print("Thaila is $thaila and Amount is $amount");
  }
}
