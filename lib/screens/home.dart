import 'package:flutter/material.dart';
import 'package:meme_app/screens/feed.dart';
import 'package:meme_app/screens/profile.dart';
import 'package:meme_app/screens/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> pages = [Feed(), Profile(), Settings()];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        // backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => pages[index],
          //   ),
          // );
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.feed),
              label: 'Feed',
              backgroundColor: Colors.deepPurpleAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.amberAccent,
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
