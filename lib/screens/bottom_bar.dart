import 'package:flutter/material.dart';
import 'package:projey01/screens/home_screens.dart';
import 'package:projey01/screens/profile_screen.dart';
import 'package:projey01/screens/search_screens.dart';
import 'package:projey01/screens/ticket_screens.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int  _selectedIndex=0;
  static final List<Widget>_widgetOption=<Widget>[
    const HomeScreens(),
    const SearchScreen (),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  void onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: Center(
      child:_widgetOption[_selectedIndex],
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: onItemTapped,
      elevation:  20,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.blueGrey,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: const Color(0xFF526480),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: "airplane_ticket"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "person")
      ] 
      ),
    );
  }
}