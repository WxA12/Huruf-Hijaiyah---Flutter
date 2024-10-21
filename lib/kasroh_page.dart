import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KasrohPage extends StatefulWidget {
  const KasrohPage({super.key});

  @override
  State<KasrohPage> createState() => _KasrohPageState();
}

class _KasrohPageState extends State<KasrohPage> {
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
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/kasroh.png',
              fit: BoxFit.contain,
              height: 40,
            )
          ],
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Jumlah kolom dalam grid
              crossAxisSpacing: 10, // Jarak horizontal antar item
              mainAxisSpacing: 10, // Jarak vertikal antar item
            ),
            itemCount: hurufKasrah.length,
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
                      hurufKasrah[index]['huruf']!,
                      style: GoogleFonts.robotoSlab(
                        fontSize: 30, // Ukuran huruf hijaiyah
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara huruf dan teks nama
                    Text(
                      hurufKasrah[index]['bacaan']!,
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
