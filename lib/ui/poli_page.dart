import 'package:flutter/material.dart'; //baris ini mengimpor pustaka flutter/material.dart yang diperlukan untuk menggunakan widget dan komponen UI dari Flutter.
import '../model/poli.dart'; //Baris ini mengimpor file yang diperlukan, seperti poli.dart
import 'poli_detail.dart'; //mengimpor file yang diperlukan seperti poli_detail.dart,
import 'poli_item.dart'; //mengimpor file yang diperlukan, seperti poli_item.dart
import 'poli_form.dart'; //mengimpor file yang diperlukan poli_form.dart.

//Kelas PoliPage ini merupakan turunan dari StatefulWidget, yang menandakan bahwa state-nya dapat berubah seiring waktu. Kelas ini menggantikan metode createState untuk membuat objek state yang sesuai _PoliPageState untuk widget ini.
class PoliPage extends StatefulWidget {
  const PoliPage({Key? key})
      : super(
            key:
                key); //menerima parameter opsional key dan memanggil konstruktor super dengan key yang diberikan.

  @override
  State<PoliPage> createState() =>
      _PoliPageState(); //Metode ini digunakan untuk membuat state yang terkait dengan PoliPage.
}

//Kelas _PoliPageState ini merupakan turunan dari kelas State, yang mewakili state yang dapat berubah untuk widget PoliPage. Kelas ini menggantikan metode build, yang dipanggil oleh framework untuk membangun antarmuka pengguna untuk widget ini.
class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold digunakan sebagai kerangka kerja untuk halaman. Ini memberikan app bar dan fungsi-fungsi lainnya seperti menangani navigasi.
      appBar: AppBar(
        //AppBar menampilkan judul "Data Poli" dan sebuah ikon tambah di sudut kanan atas. Ketika ikon tambah ditekan,
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              //fungsi onTap akan menavigasikan pengguna ke halaman PoliForm menggunakan Navigator.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        //ListView digunakan untuk menampilkan daftar poli. Setiap elemen dalam daftar direpresentasikan oleh PoliItem yang menerima objek Poli.
        children: [
          //Empat PoliItem ditambahkan ke dalam ListView dengan nama poli yang berbeda untuk ditampilkan.
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}
