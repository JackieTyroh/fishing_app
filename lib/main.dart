import 'package:flutter/material.dart';
import 'index.dart';

void main() => runApp(Index());

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fishing_app',
      theme: new ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black, fontFamily: "Roboto")),
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
      ),
      home: IndexHome(),
    );
  }
}
