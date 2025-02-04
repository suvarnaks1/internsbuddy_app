

import 'package:buddy_pair/view/requests/screens/sent_screen.dart';
import 'package:flutter/material.dart';

import 'home/screens/homescreens.dart';
import 'view/matches/screens/matches_page.dart';





class BottomNavBarExample extends StatefulWidget {
  @override
  _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    HomeScreen(),
    DiscoverScreen(),
    SentScreen(),
    LocationScreen(),
    MatchesPage(),
 
  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.pinkAccent,
            unselectedItemColor: Colors.grey,
            selectedIconTheme:
                IconThemeData(color: Colors.pinkAccent, size: 30),
            unselectedIconTheme: IconThemeData(color: Colors.grey, size: 30),
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: [
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset(
                    'assets/images/homeicon.png',
                  ),
                  isSelected: _selectedIndex == 0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset('assets/images/Discover.png'),
                  isSelected: _selectedIndex == 1,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset('assets/images/Gradient.png'),
                  isSelected: _selectedIndex == 2,
                ),
                label: '',
              ),
              BottomNavigationBarItem( 
                icon: _buildIconWithCircle(
                  icon: Image.asset('assets/images/Matches.png'),
                  isSelected: _selectedIndex == 3,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset('assets/images/Message.png'),
                  isSelected: _selectedIndex == 4,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class  LocationScreen extends StatelessWidget {
  const  LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget _buildIconWithCircle({required Widget icon, required bool isSelected}) {
  return isSelected
      ? Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.pink),
          child: Center(child: icon),
        )
      : icon;
}






