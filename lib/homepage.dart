import 'package:flutter/material.dart';
import 'package:untitled2/pages/account.dart';
import 'package:untitled2/pages/home.dart';
import 'package:untitled2/pages/reels.dart';
import 'package:untitled2/pages/search.dart';
import 'package:untitled2/pages/shop.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _children =[
    UserHome(),
    UserSearch(),
    UserReels(),
   UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label : 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label :'account')],
      ),
    );
  }
}
