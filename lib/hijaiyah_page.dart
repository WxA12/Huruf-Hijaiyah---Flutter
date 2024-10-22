import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart'; // Paket untuk menggunakan font Google Fonts

class Hijaiyah extends StatefulWidget {
  const Hijaiyah({super.key}); // Constructor default dengan super key

  @override
  State<Hijaiyah> createState() => _HijaiyahState(); // Membuat state untuk widget Hijaiyah
}

class _HijaiyahState extends State<Hijaiyah> {
  // List yang menyimpan huruf hijaiyah dan nama dari huruf tersebut
  final List<Map<String, String>> hurufHijaiyah = [
    {'huruf': 'ا', 'nama': 'Alif'},
    {'huruf': 'ب', 'nama': "'Ba"},
    {'huruf': 'ت', 'nama': "'Ta"},
    {'huruf': 'ث', 'nama': "'Tsa"},
    {'huruf': 'ج', 'nama': 'Jim'},
    {'huruf': 'ح', 'nama': "'Ha"},
    {'huruf': 'خ', 'nama': "'Kha"},
    {'huruf': 'د', 'nama': 'Dal'},
    {'huruf': 'ذ', 'nama': 'Dzal'},
    {'huruf': 'ر', 'nama': 'Ra'},
    {'huruf': 'ز', 'nama': 'Za'},
    {'huruf': 'س', 'nama': 'Sin'},
    {'huruf': 'ش', 'nama': 'Syin'},
    {'huruf': 'ص', 'nama': 'Shad'},
    {'huruf': 'ض', 'nama': 'Dhod'},
    {'huruf': 'ط', 'nama': 'Tho'},
    {'huruf': 'ظ', 'nama': 'Dzo'},
    {'huruf': 'ع', 'nama': "Ain'"},
    {'huruf': 'غ', 'nama': 'Ghain'},
    {'huruf': 'ف', 'nama': "'Fa"},
    {'huruf': 'ق', 'nama': 'Qof'},
    {'huruf': 'ك', 'nama': 'Kaf'},
    {'huruf': 'ل', 'nama': 'Lam'},
    {'huruf': 'م', 'nama': 'Mim'},
    {'huruf': 'ن', 'nama': 'Nun'},
    {'huruf': 'ه', 'nama': "'Ha"},
    {'huruf': 'و', 'nama': 'Waw'},
    {'huruf': 'لا ', 'nama': 'Lam Alif'},
    {'huruf': 'ء', 'nama': 'Hamzah'},
    {'huruf': 'ي', 'nama': "'Ya"}
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
              'images/hurufix.png', // Gambar aset lokal
              fit: BoxFit.contain, // Menjaga rasio gambar
              height: 40, // Tinggi gambar
            ),
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
            itemCount: hurufHijaiyah.length, // Jumlah item berdasarkan panjang list hurufHijaiyah
            itemBuilder: (context, index) {
              return Container(
                // Membungkus setiap item dalam grid dengan container
                decoration: BoxDecoration(
                  color: Colors.amber[50], // Warna latar belakang item
                  borderRadius: BorderRadius.circular(10), // Membuat sudut item membulat
                  border: Border.all(color: Colors.blueGrey), // Memberikan border dengan warna blue-grey
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Menempatkan konten di tengah secara vertikal
                  children: [
                    Text(
                      hurufHijaiyah[index]['huruf']!, // Menampilkan huruf hijaiyah
                      style: GoogleFonts.robotoSlab(
                        fontSize: 30, // Ukuran font huruf hijaiyah
                        fontWeight: FontWeight.bold, // Ketebalan font huruf hijaiyah
                      ),
                    ),
                    SizedBox(height: 10), // Spasi vertikal antara huruf dan nama huruf
                    Text(
                      hurufHijaiyah[index]['nama']!, // Menampilkan nama huruf hijaiyah
                      style: GoogleFonts.robotoSlab(
                        fontSize: 16, // Ukuran font nama huruf
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
