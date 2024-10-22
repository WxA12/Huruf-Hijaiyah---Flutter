import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Paket untuk menggunakan font Google Fonts

class KasrohPage extends StatefulWidget {
  const KasrohPage({super.key}); // Constructor default dengan super key

  @override
  State<KasrohPage> createState() => _KasrohPageState(); // Membuat state untuk widget kasrohpage
}

class _KasrohPageState extends State<KasrohPage> {
  // List yang menyimpan huruf hijaiyah harokat kasrah dan bacaan dari huruf tersebut
  final List<Map<String, String>> hurufKasrah = [
    {'huruf': 'اِ', 'bacaan': 'I'},
    {'huruf': 'بِ', 'bacaan': 'Bi'},
    {'huruf': 'تِ', 'bacaan': 'Ti'},
    {'huruf': 'ثِ', 'bacaan': 'Tsi'},
    {'huruf': 'جِ', 'bacaan': 'Ji'},
    {'huruf': 'حِ', 'bacaan': 'Hi'},
    {'huruf': 'خِ', 'bacaan': 'Khi'},
    {'huruf': 'دِ', 'bacaan': 'Di'},
    {'huruf': 'ذِ', 'bacaan': 'Dzi'},
    {'huruf': 'رِ', 'bacaan': 'Ri'},
    {'huruf': 'زِ', 'bacaan': 'Zi'},
    {'huruf': 'سِ', 'bacaan': 'Si'},
    {'huruf': 'شِ', 'bacaan': 'Syi'},
    {'huruf': 'صِ', 'bacaan': 'Shi'},
    {'huruf': 'ضِ', 'bacaan': 'Dhi'},
    {'huruf': 'طِ', 'bacaan': 'Thi'},
    {'huruf': 'ظِ', 'bacaan': 'Dzi'},
    {'huruf': 'عِ', 'bacaan': "i'"},
    {'huruf': 'غِ', 'bacaan': 'Ghi'},
    {'huruf': 'فِ', 'bacaan': 'Fi'},
    {'huruf': 'قِ', 'bacaan': 'Qi'},
    {'huruf': 'كِ', 'bacaan': 'Ki'},
    {'huruf': 'لِ', 'bacaan': 'Li'},
    {'huruf': 'مِ', 'bacaan': 'Mi'},
    {'huruf': 'نِ', 'bacaan': 'Ni'},
    {'huruf': 'هِ', 'bacaan': 'Hi'},
    {'huruf': 'وِ', 'bacaan': 'Wi'},
    {'huruf': 'لِا', 'bacaan': 'Lii'},
    {'huruf': 'ءِ', 'bacaan': 'I'},
    {'huruf': 'يِ', 'bacaan': 'Yi'},
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
              'images/kasroh.png', // Gambar aset lokal
              fit: BoxFit.contain, // Menjaga rasio gambar
              height: 40, // Tinggi gambar
            )
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl, // Mengatur arah teks dari kanan ke kiri (sesuai huruf Hijaiyah harokat kasroh)
        child: Padding( 
          padding: const EdgeInsets.all(16.0), // Padding di seluruh sisi body
          child: GridView.builder(
            // Membuat grid yang dinamis dengan jumlah elemen sesuai dengan itemCount
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Jumlah kolom dalam grid
              crossAxisSpacing: 10, // Jarak horizontal antar item
              mainAxisSpacing: 10, // Jarak vertikal antar item
            ),
            itemCount: hurufKasrah.length, // Jumlah item berdasarkan panjang list huruf hijaiyah harokat kasroh
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueGrey),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hurufKasrah[index]['huruf']!, // Menampilkan huruf hijaiyah harokat kasroh
                      style: GoogleFonts.robotoSlab(
                        fontSize: 30, // Ukuran huruf hijaiyah
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara huruf dan teks nama
                    Text(
                      hurufKasrah[index]['bacaan']!,  // Menampilkan bacaan huruf hijaiyah harokat kasroh
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
