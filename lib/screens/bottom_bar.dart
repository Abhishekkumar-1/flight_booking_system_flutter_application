import 'package:fluentui_icons/fluentui_icons.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticketbook_flutter/screens/app_tickets.dart';
import 'package:ticketbook_flutter/screens/home_screen.dart';
import 'package:ticketbook_flutter/screens/profile_screen.dart';
import 'package:ticketbook_flutter/screens/search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _widgetOptions=<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const AppTicketScreen(),
    const ProfileScreen(),
  ];

  void _ontappedItem(int index){
    setState((){
      _selectedIndex=index;
    });
    // print('Tapped index is ${_selectedIndex}');
    // print('Tapped index is '+_selectedIndex.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Booking App",
      //   //textAlign: TextAlign.center,
      //     style: TextStyle(
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _ontappedItem,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.red[800],
        items:const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),label:'Home'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label:'Search'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label:'Ticket'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),label:'Profile')
        ],
      ),
    );
  }
}
