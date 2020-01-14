import 'package:fishing_app/activities.dart';
import 'package:fishing_app/add.dart';
import 'package:fishing_app/index.dart';
import 'package:fishing_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:fishing_app/map.dart';
import 'login.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IndexHome()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.local_activity),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Activity()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Add()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.map),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Map()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
        ],
      ),
    );
  }
}
// For BottomNationBar
// BottomNavigationBar(
//   selectedItemColor: Colors.blue,
//   unselectedItemColor: Colors.black,
//   type: BottomNavigationBarType.fixed,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text('Home')
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.local_activity),
//                 title: Text('Activities')
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.add_box,),
//                 title: Text('Add')
//             ),
//             BottomNavigationBarItem(

//                 icon: Icon(Icons.map),
//                 title: Text('Map')
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.account_circle),
//                 title: Text('Profile')
//             ),
//           ],

//         );
//
