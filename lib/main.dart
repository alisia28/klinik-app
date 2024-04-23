import 'package:flutter/material.dart'; //Baris tersebut mengimpor package flutter/material.dart yang diperlukan untuk membangun antarmuka pengguna (UI) dengan Flutter.
import '/ui/poli_page.dart'; //Baris ini mengimpor file poli_page.dart dari direktori /ui. Ini berarti kita mengimpor widget PoliPage yang terdapat dalam file tersebut.

//Fungsi main() merupakan titik masuk (entry point) dari aplikasi Flutter. Di sini, kita membuat instance dari kelas MyApp dan menjalankannya dengan runApp().
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //Kelas MyApp didefinisikan sebagai StatelessWidget, yang berarti aplikasi ini tidak memiliki state yang berubah sepanjang waktu.

  @override
  Widget build(BuildContext context) {
    //Meng-override metode build() untuk membangun UI (antarmuka pengguna) dari aplikasi.
    return MaterialApp(
      title: 'Klinik APP',
      debugShowCheckedModeBanner: false,
      home: PoliPage(),
    );
  }
}
//Properti title digunakan untuk memberikan judul aplikasi.
//Properti debugShowCheckedModeBanner digunakan untuk menampilkan atau menyembunyikan banner "Debug" di sudut kanan atas aplikasi.
//Properti home menetapkan halaman utama aplikasi sebagai PoliPage(), yang merupakan halaman pertama yang akan ditampilkan saat aplikasi dijalankan.
//Mengembalikan sebuah MaterialApp, yang merupakan root widget dari aplikasi. Properti title digunakan untuk memberikan judul pada aplikasi. debugShowCheckedModeBanner diatur sebagai false untuk menghilangkan label "Debug" pada banner. Properti home menetapkan PoliPage() sebagai halaman utama yang akan ditampilkan saat aplikasi dijalankan.
//Dengan demikian, kode tersebut membangun dan menjalankan aplikasi Flutter yang menampilkan halaman PoliPage sebagai halaman utama dengan judul "Klinik APP".