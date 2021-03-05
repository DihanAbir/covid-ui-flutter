import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/screens.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  final List _screens = [
    Home_Screen(),
    Stats_Screen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(()=> _currentIndex = index),
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
          elevation: 0.5,

        items: [Icons.home, Icons.title , Icons.email , Icons.ac_unit, Icons.map]
            .asMap()
            .map((key, value) => MapEntry(
            key,
            BottomNavigationBarItem(
          title: Text(""),
          icon: Container(padding: const EdgeInsets.symmetric(
            vertical: 6.0,
            horizontal: 20.0,
          ),
            decoration: BoxDecoration(
              color: _currentIndex == key ? Colors.blue[600]
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(20.0),
            ),
              child: Icon(value),
          )
        )
        )
        ).values.toList()
      ),

    );
  }
}
