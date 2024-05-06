import 'package:flutter/material.dart'; // pernyataan impor yang mengimpor paket flutter/material.dart.
import '../widget/sidebar.dart'; //pernyataan impor untuk mengimpor file sidebar.dart dari direktori yang satu tingkat di atas dalam struktur proyek.
import '../model/pegawai.dart'; //pernyataan impor untuk mengimpor file pegawai.dart dari direktori yang satu tingkat di atas dalam struktur proyek
import '../model/pasien.dart'; //pernyataan impor untuk mengimpor file pasien.dart dari direktori yang satu tingkat di atas dalam struktur proyek.
import 'pegawai_detail.dart'; //pernyataan impor untuk mengimpor file pegawai_detail.dart.
import 'pasien_detail.dart'; // pernyataan impor untuk mengimpor file pasien_detail.dart.
import 'pegawai_item.dart'; //pernyataan impor untuk mengimpor file pegawai_item.dart.
import 'pasien_item.dart'; // pernyataan impor untuk mengimpor file pasien_item.dart.
import 'pegawai_form.dart'; //pernyataan impor untuk mengimpor file pegawai_form.dart.
import 'pasien_form.dart'; //pernyataan impor untuk mengimpor file pasien_form.

class PasienPage extends StatefulWidget {
  // definisi kelas PasienPage yang merupakan turunan dari kelas StatefulWidget.
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() =>
      _PasienPageState(); // metode createState yang mengembalikan objek dari kelas _PasienPageState.
}

class _PasienPageState extends State<PasienPage> {
  // definisi kelas _PasienPageState yang merupakan turunan dari kelas State.
  @override
  Widget build(BuildContext context) {
    //metode build yang menggantikan metode build dari kelas State.
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            //Ini adalah widget GestureDetector yang digunakan untuk mendeteksi ketukan pengguna pada ikon tambah.
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(
        //Ini adalah properti body dari Scaffold yang ditetapkan dengan widget ListView.
        children: [
          PegawaiItem(pegawai: Pegawai(namaPegawai: "Pegawai")),
          PasienItem(pasien: Pasien(namaPasien: "Pasien")),
        ],
      ),
    );
  }
}
