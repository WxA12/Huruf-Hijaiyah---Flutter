import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Hijaiyah extends StatefulWidget {
  const Hijaiyah({super.key});

  @override
  State<Hijaiyah> createState() => _HijaiyahState();
}

class _HijaiyahState extends State<Hijaiyah> {
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
      appBar: AppBar(
          backgroundColor: Colors.amber.shade100,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/hurufix.png',
                fit: BoxFit.contain,
                height: 40,
              ),
            ],
          )),
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
            itemCount: hurufHijaiyah.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueGrey),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hurufHijaiyah[index]['huruf']!,
                      style: GoogleFonts.robotoSlab(
                        fontSize: 30, // Ukuran huruf hijaiyah
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), // Jarak antara huruf dan teks nama
                    Text(
                      hurufHijaiyah[index]['nama']!,
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
