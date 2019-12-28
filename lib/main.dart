import 'package:flutter/material.dart';
import 'index.dart';

void main() => runApp(Index());

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: new ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme:IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black,
            fontFamily: "Aveny")),
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
      ),
      home: IndexHome(),
    );
  }
}
