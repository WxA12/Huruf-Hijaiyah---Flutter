import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FathahPage extends StatefulWidget {
  const FathahPage({super.key});

  @override
  State<FathahPage> createState() => _FathahpageState();
}

class _FathahpageState extends State<FathahPage> {
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
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/fathah.png',
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
            itemCount: hurufFathah.length,
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
                      hurufFathah[index]['huruf']!,
                      style: GoogleFonts.robotoSlab(
                        fontSize: 30, // Ukuran huruf hijaiyah
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara huruf dan teks nama
                    Text(
                      hurufFathah[index]['bacaan']!,
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
