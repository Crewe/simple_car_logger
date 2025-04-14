import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:simple_logger/views/log_entry_page.dart';
import 'package:simple_logger/views/log_review_page.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _selectedTab = 0;
  final List<Widget> _pages = [LogEntryPage(), LogReviewPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicle Entry Log")),
      body: _pages[_selectedTab],
      bottomNavigationBar: GNav(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        selectedIndex: _selectedTab,
        onTabChange: (value) {
          log("Changing tab to index $value");
          setState(() {
            _selectedTab = value;
          });
        },
        tabs: [
          GButton(icon: Icons.alarm),
          //GButton(icon: Icons.camera_alt_outlined,),
          GButton(icon: Icons.notes_outlined),
        ],
      ),
    );
  }
}
