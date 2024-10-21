import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Huruf_Hijaiyah/dommah_page.dart';
import 'package:Huruf_Hijaiyah/fathah_page.dart';
import 'package:Huruf_Hijaiyah/hijaiyah_page.dart';
import 'package:Huruf_Hijaiyah/kasroh_page.dart';

class Navigation_Bar extends StatefulWidget {
  const Navigation_Bar({super.key});

  @override
  State<Navigation_Bar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<Navigation_Bar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Hijaiyah(),
    DommahPage(),
    FathahPage(),
    KasrohPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: Text(
          'Mempelajari Huruf-Huruf Hijaiyah',
          style:
              GoogleFonts.robotoSlab(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        backgroundColor: Colors.white,
        color: Colors.grey[700],
        activeColor: Colors.cyan[800],
        height: 60,
        items: [
          TabItem(
            icon: Icons.auto_stories_rounded,
            title: 'Hijaiyah',
          ),
          TabItem(
            icon: Icons.auto_stories_rounded,
            title: 'Dhommah',
          ),
          TabItem(icon: Icons.auto_stories_rounded, title: 'Fathah'),
          TabItem(icon: Icons.auto_stories_rounded, title: 'Kasroh'),
          // TabItem(icon: Icons.add_circle, title: 'Profil'),
        ],
        initialActiveIndex: _currentIndex, //optional, default as 0
        onTap: (int i) {
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}
