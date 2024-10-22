import 'package:flutter/material.dart'; // Paket utama untuk membangun aplikasi Flutter berbasis Material Design
import 'package:Huruf_Hijaiyah/navigation/navigation_layout_bar.dart'; // Mengimpor file `navigation_layout_bar.dart` yang berisi widget `Navigation_Bar`

void main() {
  runApp(const MyApp()); // Fungsi utama yang menjalankan aplikasi Flutter dengan root widget `MyApp`
}

// Widget Stateless yang merupakan root dari aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor default dengan super key

  @override
  Widget build(BuildContext context) {
    // Metode build yang mengembalikan struktur widget untuk aplikasi
    return MaterialApp(
      // Membuat aplikasi menggunakan widget Material Design
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug di pojok kanan atas
      title: 'Huruf Hijaiyah', // Menentukan judul aplikasi, yang muncul pada task manager perangkat
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Mengatur skema warna aplikasi dengan warna dasar ungu tua
        useMaterial3: true, // Mengaktifkan fitur dari Material Design versi 3
      ),
      home: const Navigation_Bar(), // Menetapkan widget `Navigation_Bar` sebagai halaman awal aplikasi
    );
  }
}
