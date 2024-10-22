import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Paket untuk menggunakan font Google Fonts

class FathahPage extends StatefulWidget {
  const FathahPage({super.key}); // Constructor default dengan super key

  @override
  State<FathahPage> createState() => _FathahpageState(); // Membuat state untuk widget Hijaiyah
}

class _FathahpageState extends State<FathahPage> {
  // List yang menyimpan huruf fathah dan bacaan dari huruf tersebut
  final List<Map<String, String>> hurufFathah = [
    {'huruf': 'اَ', 'bacaan': 'a'},
    {'huruf': 'بَ', 'bacaan': 'Ba'},
    {'huruf': 'تَ', 'bacaan': 'Ta'},
    {'huruf': 'ثَ', 'bacaan': 'Tsa'},
    {'huruf': 'جَ', 'bacaan': 'Ja'},
    {'huruf': 'حَ', 'bacaan': 'Ha'},
    {'huruf': 'خَ', 'bacaan': 'Kha'},
    {'huruf': 'دَ', 'bacaan': 'Da'},
    {'huruf': 'ذَ', 'bacaan': 'Dzal'},
    {'huruf': 'رَ', 'bacaan': 'Ra'},
    {'huruf': 'زَ', 'bacaan': 'Za'},
    {'huruf': 'سَ', 'bacaan': 'Si'},
    {'huruf': 'شَ', 'bacaan': 'Sya'},
    {'huruf': 'صَ', 'bacaan': 'Sha'},
    {'huruf': 'ضَ', 'bacaan': 'Dha'},
    {'huruf': 'طَ', 'bacaan': 'Tha'},
    {'huruf': 'ظَ', 'bacaan': 'Dzo'},
    {'huruf': 'عَ', 'bacaan': "Ain'"},
    {'huruf': 'غَ', 'bacaan': 'Ghain'},
    {'huruf': 'فَ', 'bacaan': 'Fa'},
    {'huruf': 'قَ', 'bacaan': 'Qaf'},
    {'huruf': 'كَ', 'bacaan': 'Ka'},
    {'huruf': 'لَ', 'bacaan': 'La'},
    {'huruf': 'مَ', 'bacaan': 'Ma'},
    {'huruf': 'نَ', 'bacaan': 'Na'},
    {'huruf': 'هَ', 'bacaan': 'Ha'},
    {'huruf': 'وَ', 'bacaan': 'Wa'},
    {'huruf': 'لَا', 'bacaan': 'La'},
    {'huruf': 'ءَ', 'bacaan': 'A'},
    {'huruf': 'يَ', 'bacaan': 'Ya'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Struktur dasar halaman yang memiliki AppBar dan Body
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,  // Warna background AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Posisikan konten di tengah secara horizontal
          children: [
            Image.asset(
              'images/fathah.png', // Gambar aset lokal
              fit: BoxFit.contain, // Menjaga rasio gambar
              height: 40, // Tinggi gambar
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
            itemCount: hurufFathah.length, // Jumlah item berdasarkan panjang list huruffathah
            itemBuilder: (context, index) {
              return Container(
                // Membungkus setiap item dalam grid dengan container
                decoration: BoxDecoration(
                  color: Colors.amber.shade50, // Warna latar belakang item
                  borderRadius: BorderRadius.circular(10),  // Membuat sudut item membulat
                  border: Border.all(color: Colors.blueGrey),  // Memberikan border dengan warna blue-grey
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Menempatkan konten di tengah secara vertikal
                  children: [
                    Text(
                      hurufFathah[index]['huruf']!, // Menampilkan huruf hijaiyah fathah
                      style: GoogleFonts.robotoSlab(
                        fontSize: 30, // Ukuran huruf hijaiyah fathah
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara huruf dan teks nama
                    Text(
                      hurufFathah[index]['bacaan']!, // Menampilkan bacaan huruf hijaiyah fathah
                      style: GoogleFonts.robotoSlab(
                        fontSize: 16, // Ukuran nama huruf
                        fontWeight: FontWeight.w500,
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
