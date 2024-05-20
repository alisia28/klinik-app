import 'package:flutter/material.dart'; //Baris ini mengimpor pustaka material dari Flutter,
import '../../widget/sidebar.dart'; // Baris ini mengimpor file 'sidebar.dart' dari jalur relatif. Ini mungkin berisi implementasi sidebar untuk aplikasi.
import '../../model/pegawai.dart'; //Baris ini mengimpor file 'pegawai.dart' dari jalur relatif.
import '../../model/pasien.dart'; //Baris ini mengimpor file 'pasien.dart' dari jalur relatif.
import 'pegawai_detail.dart'; // Baris ini mengimpor file 'pegawai_detail.dart',
import '../pasien/pasien_detail.dart'; // Baris ini mengimpor file 'pasien_detail.dart',
import 'pegawai_item.dart'; //Baris ini mengimpor file 'pegawai_item.dart',
import '../pasien/pasien_item.dart'; //Baris ini mengimpor file 'pasien_item.dart', yang kemungkinan berisi implementasi item untuk daftar pasien.
import 'pegawai_form.dart'; // Baris ini mengimpor file 'pegawai_form.dart',
import '../pasien/pasien_form.dart'; //Baris ini mengimpor file 'pasien_form.dart',

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});
  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
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
