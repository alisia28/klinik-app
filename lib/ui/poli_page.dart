//mengimpor paket-paket yang diperlukan untuk mengakses widget-widget Flutter dan file-file terkait poli.
import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

//kelas yang mewakili halaman Poli. Kelas ini merupakan turunan dari StatefulWidget, yang berarti halaman ini dapat memiliki state yang berubah.
class PoliPage extends StatefulWidget {
  const PoliPage({Key? key});

//menggantikan metode createState() dari StatefulWidget dan mengembalikan instance dari _PoliPageState, yang merupakan kelas State untuk PoliPage.
  @override
  State<PoliPage> createState() => _PoliPageState();
}

//kelas state yang terkait dengan PoliPage. Kelas ini merupakan turunan dari State<PoliPage> dan berisi logika untuk membangun tampilan halaman Poli.
class _PoliPageState extends State<PoliPage> {
  @override

  //menggambarkan tampilan halaman Poli menggunakan widget Scaffold yang memiliki judul "Data Poli" dan menggunakan ListView sebagai wadah untuk daftar poli.
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Poli")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = Poli(namaPoli: "Poli Anak");
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PoliDetail(poli: poliAnak)),
              );
            },
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Kandungan"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Gigi"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli THT"),
            ),
          ),
        ],
      ),
    );
  }
}
//Meng-override metode build() untuk membangun UI (antarmuka pengguna) dari halaman ini. Halaman ini menggunakan Scaffold sebagai root widget. AppBar menampilkan judul "Data Poli". body menggunakan ListView sebagai container untuk menampilkan daftar poliklinik.
//GestureDetector digunakan untuk memberikan interaksi ketika pengguna mengetuk daftar poliklinik. Ketika pengguna mengetuk daftar poliklinik "Poli Anak", maka akan dibuat objek poliAnak dengan nama poliklinik "Poli Anak" menggunakan kelas Poli. Selanjutnya, menggunakan Navigator.push, halaman PoliDetail akan ditampilkan dengan memberikan objek poliAnak sebagai parameter.
//Card digunakan untuk mengelompokkan ListTile yang berisi judul poliklinik.
//ListTile menampilkan judul poliklinik sesuai dengan teks yang diberikan.
//Terdapat beberapa Card dan ListTile yang menampilkan daftar poliklinik seperti "Poli Kandungan", "Poli Gigi", dan "Poli THT".
//Dengan demikian, kode tersebut mewakili halaman PoliPage yang menampilkan daftar poliklinik dan memberikan aksi ketika pengguna mengklik salah satu daftar poliklinik untuk membuka halaman detail poliklinik.