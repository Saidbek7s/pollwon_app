import 'package:flutter/material.dart';
import 'package:uzum_clone/pages/homapage1.dart';

import 'package:uzum_clone/pages/savatpage.dart';
import 'package:uzum_clone/pages/profil.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final tabs = [
    const Homapage(),
    const Savat(),
    const Setting(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 49, 136, 128),
      // appBar: AppBar(
      //   elevation: 0,
      //   title: const Text('Pollwon'),
      //   backgroundColor: const Color.fromARGB(245, 49, 136, 128),
      // ),
      body: tabs[_selectedIndex],
    
      // drawer:  const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'savat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 49, 136, 128),
        onTap: _onItemTapped,
      ),
    );
  }
}
