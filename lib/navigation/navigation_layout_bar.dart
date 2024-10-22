import 'package:convex_bottom_bar/convex_bottom_bar.dart'; // Paket untuk membuat Bottom Navigation Bar dengan style convex
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart'; // Paket untuk menggunakan Google Fonts
import 'package:Huruf_Hijaiyah/dommah_page.dart'; // Mengimpor halaman Dhommah
import 'package:Huruf_Hijaiyah/fathah_page.dart'; // Mengimpor halaman Fathah
import 'package:Huruf_Hijaiyah/hijaiyah_page.dart'; // Mengimpor halaman Hijaiyah
import 'package:Huruf_Hijaiyah/kasroh_page.dart'; // Mengimpor halaman Kasroh

// Widget Stateful untuk menampilkan Bottom Navigation Bar
class Navigation_Bar extends StatefulWidget {
  const Navigation_Bar({super.key}); // Constructor default dengan super key

  @override
  State<Navigation_Bar> createState() => _NavigationBarState(); // Membuat state untuk widget Navigation_Bar
}

class _NavigationBarState extends State<Navigation_Bar> {
  int _currentIndex = 0; // Indeks halaman yang sedang aktif, default-nya 0

  // Daftar halaman yang ditampilkan pada tiap tab di Bottom Navigation Bar
  final List<Widget> _pages = [
    Hijaiyah(), // Halaman untuk huruf Hijaiyah
    DommahPage(), // Halaman untuk tanda Dhommah
    FathahPage(), // Halaman untuk tanda Fathah
    KasrohPage(), // Halaman untuk tanda Kasroh
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Struktur dasar halaman yang memiliki AppBar dan Body
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100, // Warna background AppBar
        title: Text(
          'Mempelajari Huruf-Huruf Hijaiyah', // Judul yang ditampilkan di AppBar
          style: GoogleFonts.robotoSlab( // Gaya font untuk judul
            fontSize: 20, // Ukuran font judul
            fontWeight: FontWeight.bold, // Ketebalan font judul
          ),
        ),
        centerTitle: true, // Mengatur judul berada di tengah AppBar
      ),
      body: _pages[_currentIndex], // Menampilkan halaman sesuai dengan tab yang dipilih
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react, // Gaya tab yang reaktif (animasi saat dipilih)
        backgroundColor: Colors.white, // Warna background dari Bottom Navigation Bar
        color: Colors.grey[700], // Warna ikon saat tidak aktif
        activeColor: Colors.cyan[800], // Warna ikon saat aktif
        height: 60, // Tinggi Bottom Navigation Bar
        items: [
          TabItem(
            icon: Icons.auto_stories_rounded, // Ikon untuk tab Hijaiyah
            title: 'Hijaiyah', // Teks judul untuk tab Hijaiyah
          ),
          TabItem(
            icon: Icons.auto_stories_rounded, // Ikon untuk tab Dhommah
            title: 'Dhommah', // Teks judul untuk tab Dhommah
          ),
          TabItem(
            icon: Icons.auto_stories_rounded, // Ikon untuk tab Fathah
            title: 'Fathah', // Teks judul untuk tab Fathah
          ),
          TabItem(
            icon: Icons.auto_stories_rounded, // Ikon untuk tab Kasroh
            title: 'Kasroh', // Teks judul untuk tab Kasroh
          ),
        ],
        initialActiveIndex: _currentIndex, // Indeks awal yang aktif, default-nya adalah 0
        onTap: (int i) {
          setState(() {
            _currentIndex = i; // Mengganti indeks sesuai dengan tab yang dipilih
          });
        },
      ),
    );
  }
}
