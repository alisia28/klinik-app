import 'package:flutter/material.dart'; // Baris ini mengimpor pustaka material dari Flutter, yang menyediakan widget, kelas, dan fungsi yang mengimplementasikan Desain Material.
import '../model/pegawai.dart'; // Baris ini mengimpor file 'pegawai.dart'
import 'pegawai_detail.dart'; //Baris ini mengimpor file 'pegawai_detail.dart'

class PegawaiItem extends StatelessWidget {
  //Baris ini mendefinisikan sebuah kelas baru bernama 'PegawaiItem' yang meng-extends 'StatelessWidget'
  final Pegawai pegawai; // Variabel ini akan menyimpan data seorang pegawai.

  const PegawaiItem(
      {super.key,
      required this.pegawai}); //Baris ini merupakan sebuah constructor untuk kelas 'PegawaiItem'.

  @override
  Widget build(BuildContext context) {
    //Baris ini mendefinisikan metode 'build' untuk widget 'PegawaiItem'.
    return GestureDetector(
      // Baris ini mengembalikan sebuah widget 'GestureDetector'.
      child: Card(
        // Baris ini mengatur child dari widget GestureDetector menjadi widget 'Card'.
        child: ListTile(
          //Baris ini mengatur child dari widget Card menjadi widget 'ListTile'.
          title: Text("${pegawai.namaPegawai}"),
        ),
      ),
      onTap: () {
        Navigator.push(
            //Baris ini menggunakan widget Navigator untuk berpindah ke layar lain.
            context, // Context diperlukan agar navigasi berfungsi dengan benar.
            MaterialPageRoute(
                builder: (context) => PegawaiDetail(pegawai: pegawai)));
      },
    );
  }
}
