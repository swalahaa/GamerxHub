import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamerxhub/call_of_duty/LeaderBoard/homepage.dart';
import 'package:gamerxhub/call_of_duty/Top_Players/homepage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomepageCodm extends StatefulWidget {
  const HomepageCodm({super.key});

  @override
  State<HomepageCodm> createState() => _HomepageCodmState();
}

class _HomepageCodmState extends State<HomepageCodm> {

  int _selectedIndex = 0;

  static  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',

    ),
    Text(
      'Likes',

    ),
    HomepageTopPlayer(),
    Text(
      'Profile',
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GNav(
              rippleColor: Colors.grey!,
              hoverColor: Colors.red!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.black!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.leaderboard,
                  text: 'LeaderBoard',
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Top Players',
                ),
                GButton(
                  icon: Icons.message,
                  text: 'Chats',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
