import 'package:flutter/material.dart';
import 'package:flutter_ticket/screens/home.dart';
import 'package:flutter_ticket/screens/profile.dart';
import 'package:flutter_ticket/screens/search.dart';
import 'package:flutter_ticket/screens/tickets.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _isActive = 0; //default selected index at start

  static final List<Widget> _widgets = <Widget>[
    const Home(),
    const Search(),
    const Ticket(),
    const Profile(),
  ];

  void _isTapped(int index) {
    setState(() {
      _isActive = index;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: _widgets[_isActive]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _isActive,//index that is being set
          onTap: _isTapped, 
          elevation: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,//make the icons not to shift
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home_filled),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.search_off_outlined),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket),
                activeIcon: Icon(Icons.airplane_ticket_outlined),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                activeIcon: Icon(Icons.person_2_outlined),
                label: "Profile"),
          ]),
    );
  }
}
