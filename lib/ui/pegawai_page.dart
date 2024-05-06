import 'package:flutter/material.dart'; //Baris ini mengimpor pustaka material dari Flutter,
import '../widget/sidebar.dart'; // Baris ini mengimpor file 'sidebar.dart' dari jalur relatif. Ini mungkin berisi implementasi sidebar untuk aplikasi.
import '../model/pegawai.dart'; //Baris ini mengimpor file 'pegawai.dart' dari jalur relatif.
import '../model/pasien.dart'; //Baris ini mengimpor file 'pasien.dart' dari jalur relatif.
import 'pegawai_detail.dart'; // Baris ini mengimpor file 'pegawai_detail.dart',
import 'pasien_detail.dart'; // Baris ini mengimpor file 'pasien_detail.dart',
import 'pegawai_item.dart'; //Baris ini mengimpor file 'pegawai_item.dart',
import 'pasien_item.dart'; //Baris ini mengimpor file 'pasien_item.dart', yang kemungkinan berisi implementasi item untuk daftar pasien.
import 'pegawai_form.dart'; // Baris ini mengimpor file 'pegawai_form.dart',
import 'pasien_form.dart'; //Baris ini mengimpor file 'pasien_form.dart',

class PegawaiPage extends StatefulWidget {
  //Baris ini mendefinisikan kelas 'PegawaiPage' yang merupakan turunan dari 'StatefulWidget', yang berarti widget ini memiliki state yang dapat berubah.
  const PegawaiPage(
      {super.key}); //Baris ini merupakan constructor untuk kelas 'PegawaiPage'

  @override
  State<PegawaiPage> createState() =>
      _PegawaiPageState(); //Baris ini mendefinisikan metode 'createState' yang mengembalikan objek dari kelas '_PegawaiPageState'
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    // Baris ini mendefinisikan metode 'build' untuk widget 'PegawaiPage'.
    return Scaffold(
      // Baris ini mengembalikan sebuah widget 'Scaffold',
      drawer:
          Sidebar(), //menentukan widget yang akan ditampilkan di sisi layar (sidebar) menggunakan widget 'Sidebar'.
      appBar: AppBar(
        //menentukan appBar untuk halaman menggunakan widget 'AppBar'.
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            // Ini adalah widget 'GestureDetector' yang digunakan untuk menangani gesture, dalam hal ini, onTap gesture.
            child: const Icon(Icons.add),
            onTap: () {
              // menentukan fungsi yang akan dijalankan ketika ikon ditap.
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(pegawai: Pegawai(namaPegawai: "Pegawai")),
          PasienItem(pasien: Pasien(namaPasien: "Pasien")),
        ],
      ),
    );
  }
}
