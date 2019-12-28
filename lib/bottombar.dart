import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              title: Text('Activities')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box,),
              title: Text('Add')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Map')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Profile')
          ),
        ],

      );
  }
}
