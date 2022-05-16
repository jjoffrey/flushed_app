import 'package:flushed_app/app/map_part/map.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flushed',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const FlushedHome(),
    );
  }
}

class FlushedHome extends StatefulWidget {
  const FlushedHome({Key? key}) : super(key: key);

  @override
  State<FlushedHome> createState() => _FlushedHomeState();
}

class _FlushedHomeState extends State<FlushedHome> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MapWidget(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 45),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check, size: 45),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 45),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
