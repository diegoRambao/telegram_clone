import 'package:flutter/material.dart';

class OptionPage extends StatefulWidget {
  @override
  _OptionPageState createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {

  int _currentIndex = 0;
  final List _children = [
    HomeOptionPage(),
    MessageOptionPage(),
    ProfileOptionPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opcciones'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index)  {
          setState(() {
          _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
           BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           label: 'Home',
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           label: 'Messages',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           label: 'Profile')
        ],
      ),
    );
  }
}

class HomeOptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('HomePageOption'),),
    );
  }
}

class MessageOptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('HomeMessageOption'),),
    );
  }
}

class ProfileOptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('HomeProfileOption'),),
    );
  }
}