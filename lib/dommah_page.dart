import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DommahPage extends StatefulWidget {
  const DommahPage({super.key});

  @override
  State<DommahPage> createState() => _dommahPageState();
}

class _dommahPageState extends State<DommahPage> {
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
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/dhommah.png',
              fit: BoxFit.contain,
              height: 39,
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
            itemCount: hurufDhommah.length,
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
                      hurufDhommah[index]['huruf']!,
                      style: GoogleFonts.robotoSlab(
                        fontSize: 30, // Ukuran huruf hijaiyah
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara huruf dan teks nama
                    Text(
                      hurufDhommah[index]['bacaan']!,
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
