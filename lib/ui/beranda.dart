<<<<<<< HEAD
import 'package:flutter/material.dart'; // Paket ini menyediakan berbagai widget dan alat yang diperlukan untuk membangun antarmuka pengguna (UI) dalam aplikasi Flutter.
import '../widget/sidebar.dart'; // pernyataan impor yang mengimpor file sidebar.dart dari direktori yang berbeda.
=======
import 'package:flutter/material.dart'; //mengimport
import '../widget/sidebar.dart';
>>>>>>> 14037cffa6841063920a516a54fe9e2fc6602c79

class Beranda extends StatelessWidget {
  //definisi kelas Beranda yang merupakan turunan dari kelas StatelessWidget.
  const Beranda(
      {Key?
          key}); // konstruktor kelas Beranda. Konstruktor ini tidak memiliki parameter dan hanya memanggil konstruktor induk dengan menggunakan kata kunci const.

  @override //menandakan bahwa metode yang mengikuti ini akan menggantikan (override) metode dengan nama yang sama dari kelas induk.
  Widget build(BuildContext context) {
    // digunakan untuk membangun antarmuka pengguna (UI) dari widget Beranda.
    return Scaffold(
      //mengembalikan sebuah widget Scaffold.
      drawer:
          Sidebar(), // digunakan untuk menampilkan drawer pada aplikasi yang berisi menu navigasi atau tautan lainnya.
      appBar: AppBar(
          title: Text(
              "Beranda FitriAlisia")), //digunakan untuk menampilkan app bar di bagian atas aplikasi dengan judul "Beranda FitriAlisia".

      body: Center(
        //digunakan untuk menampilkan konten utama aplikasi yang berada di tengah layar.

        child: Text(
            "Selamat Datang Fitri Alisia"), //digunakan untuk menampilkan teks "Selamat Datang Fitri Alisia" di tengah layar aplikasi.
      ),
    );
  }
}
