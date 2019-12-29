import 'package:fishing_app/home.dart';
import 'package:flutter/material.dart';
import 'package:fishing_app/bottombar.dart';

class IndexHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new MaterialApp(
          debugShowCheckedModeBanner: false,
          home: new Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('MFIS'),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              ],
            ),
            bottomNavigationBar: BottomBar(),
            body: Home(),
          )),
    );
  }
}
