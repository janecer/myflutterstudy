import 'package:flutter/material.dart';
import 'package:myflutterstudy/screens/home_screen.dart';
import 'package:myflutterstudy/screens/profile_screen.dart';
import 'package:myflutterstudy/screens/search_screen.dart';
import 'package:myflutterstudy/screens/ticket_screen.dart';
import 'package:myflutterstudy/utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0 ;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),activeIcon:Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),activeIcon:Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),activeIcon:Icon(Icons.airplane_ticket),label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person),activeIcon:Icon(Icons.person),label: "Profile")
        ],
      ),
    );
  }
}
