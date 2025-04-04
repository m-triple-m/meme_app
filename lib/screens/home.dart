import 'package:flutter/material.dart';
import 'package:meme_app/screens/feed.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List pages = [Feed(), Feed(), Feed()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => pages[index],
            ),
          );
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
        ],
      ),
      body: Text('Home Screen'),
    );
  }
}
