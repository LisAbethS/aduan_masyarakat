import 'package:flutter/material.dart';
import 'dart:async';
import 'pages/welcome.dart';
import 'package:google_fonts/google_fonts.dart'; // Tambahkan library Google Fonts di pubspec.yaml

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Timer untuk berpindah halaman setelah 5 detik
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700], // Background kuning sesuai desain
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Teks utama
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  "LAPORAJA",
                  style: GoogleFonts.righteous(
                    fontWeight: FontWeight.bold,
                    fontSize: 48, // Ukuran font besar
                    color: Colors.black, // Warna teks hitam
                    letterSpacing: 2.0, // Jarak antar huruf
                  ),
                ),
                SizedBox(width: 10), // Jarak kecil antara teks dan ikon
                Icon(
                  Icons.campaign, // Ikon megafon
                  color: Colors.black, // Warna ikon hitam
                  size: 50, // Ukuran ikon diperbesar
                ),
              ],
            ),
            SizedBox(height: 5), // Jarak lebih kecil antara teks utama dan teks tambahan
            // Teks tambahan di bawah "LAPORAJA"
            Text(
              "Layanan Aduan Masyarakat",
              style: TextStyle(
                fontFamily: 'Roboto', // Font yang lebih rapat
                fontWeight: FontWeight.normal,
                fontSize: 16, // Ukuran font lebih kecil
                color: Colors.black, // Warna teks hitam
                letterSpacing: 1.0, // Jarak antar huruf yang lebih rapat
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class Welcome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Welcome Screen"),
//       ),
//       body: Center(
//         child: Text(
//           "Welcome to the app!",
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
