import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Paket untuk menggunakan font Google Fonts

class DommahPage extends StatefulWidget {
  const DommahPage({super.key}); // Constructor default dengan super key

  @override
  State<DommahPage> createState() => _dommahPageState(); // Membuat state untuk widget Hijaiyah
}

class _dommahPageState extends State<DommahPage> {
  // List yang menyimpan huruf dhommah dan nama dari huruf tersebut
  final List<Map<String, String>> hurufDhommah = [
    {'huruf': 'اُ', 'bacaan': 'U'},
    {'huruf': 'بُ', 'bacaan': 'Bu'},
    {'huruf': 'تُ', 'bacaan': 'Tu'},
    {'huruf': 'ثُ', 'bacaan': 'Tsu'},
    {'huruf': 'جُ', 'bacaan': 'Ju'},
    {'huruf': 'حُ', 'bacaan': 'Hu'},
    {'huruf': 'خُ', 'bacaan': 'Khu'},
    {'huruf': 'دُ', 'bacaan': 'Du'},
    {'huruf': 'ذُ', 'bacaan': 'Dzu'},
    {'huruf': 'رُ', 'bacaan': 'Ru'},
    {'huruf': 'زُ', 'bacaan': 'Zu'},
    {'huruf': 'سُ', 'bacaan': 'Su'},
    {'huruf': 'شُ', 'bacaan': 'Syu'},
    {'huruf': 'صُ', 'bacaan': 'Shu'},
    {'huruf': 'ضُ', 'bacaan': 'Dhu'},
    {'huruf': 'طُ', 'bacaan': 'Thu'},
    {'huruf': 'ظُ', 'bacaan': 'Dzu'},
    {'huruf': 'عُ', 'bacaan': "u'"},
    {'huruf': 'غُ', 'bacaan': 'Ghu'},
    {'huruf': 'فُ', 'bacaan': 'Fu'},
    {'huruf': 'قُ', 'bacaan': 'Qu'},
    {'huruf': 'كُ', 'bacaan': 'Ku'},
    {'huruf': 'لُ', 'bacaan': 'Lu'},
    {'huruf': 'مُ', 'bacaan': 'Mu'},
    {'huruf': 'نُ', 'bacaan': 'Nu'},
    {'huruf': 'هُ', 'bacaan': 'Hu'},
    {'huruf': 'وُ', 'bacaan': 'Wu'},
    {'huruf': 'لُا', 'bacaan': 'Lu'},
    {'huruf': 'ءُ', 'bacaan': 'U'},
    {'huruf': 'يُ', 'bacaan': 'Yu'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Struktur dasar halaman yang memiliki AppBar dan Body
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100, // Warna background AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Posisikan konten di tengah secara horizontal
          children: [
            Image.asset(
              'images/dhommah.png', // Gambar aset lokal
              fit: BoxFit.contain, // Menjaga rasio gambar
              height: 39, // Tinggi gambar
            )
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl, // Mengatur arah teks dari kanan ke kiri (sesuai huruf Hijaiyah)
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding di seluruh sisi body
          child: GridView.builder(
            // Membuat grid yang dinamis dengan jumlah elemen sesuai dengan itemCount
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Jumlah kolom dalam grid
              crossAxisSpacing: 10, // Jarak horizontal antar item
              mainAxisSpacing: 10, // Jarak vertikal antar item
            ),
            itemCount: hurufDhommah.length, // Jumlah item berdasarkan panjang list hurufHijaiyah
            itemBuilder: (context, index) {
              return Container(
                 // Membungkus setiap item dalam grid dengan container
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueGrey),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Menempatkan konten di tengah secara vertikal
                  children: [
                    Text(
                      hurufDhommah[index]['huruf']!, // Menampilkan huruf hijaiyah
                      style: GoogleFonts.robotoSlab(
                        fontSize: 30, // Ukuran huruf hijaiyah
                        fontWeight: FontWeight.bold, // Ketebalan font huruf hijaiyah
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara huruf dan teks nama
                    Text(
                      hurufDhommah[index]['bacaan']!, // Menampilkan bacaan huruf hijaiyah
                      style: GoogleFonts.robotoSlab(
                        fontSize: 16, // Ukuran nama huruf
                        fontWeight: FontWeight.w500, // Ketebalan font nama huruf
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
