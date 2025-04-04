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
      appBar: AppBar(
        title: const Text('Home'),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
