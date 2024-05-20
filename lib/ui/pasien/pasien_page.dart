import 'package:flutter/material.dart'; // pernyataan impor yang mengimpor paket flutter/material.dart.
import '../../widget/sidebar.dart'; //pernyataan impor untuk mengimpor file sidebar.dart
import '../../model/pegawai.dart'; //pernyataan impor untuk mengimpor file pegawai.dart
import '../../model/pasien.dart'; //pernyataan impor untuk mengimpor file pasien.dart
import '../pegawai/pegawai_detail.dart'; //pernyataan impor untuk mengimpor file pegawai_detail.dart.
import 'pasien_detail.dart'; // pernyataan impor untuk mengimpor file pasien_detail.dart.
import '../pegawai/pegawai_item.dart'; //pernyataan impor untuk mengimpor file pegawai_item.dart.
import 'pasien_item.dart'; // pernyataan impor untuk mengimpor file pasien_item.dart.
import '../pegawai/pegawai_form.dart'; //pernyataan impor untuk mengimpor file pegawai_form.dart.
import 'pasien_form.dart'; //pernyataan impor untuk mengimpor file pasien_form.

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
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
