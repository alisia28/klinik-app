import 'package:flutter/material.dart'; // Baris ini mengimpor pustaka material dari Flutter yang diperlukan untuk membangun antarmuka pengguna.
import '../widget/sidebar.dart'; //Baris ini mengimpor file 'sidebar.dart'
import '../model/poli.dart'; // Baris ini mengimpor file 'poli.dart' yang berisi definisi model untuk poli.
import 'poli_detail.dart'; // Baris ini mengimpor file 'poli_detail.dart', yang kemungkinan berisi implementasi detail poli.
import 'poli_item.dart'; // Baris ini mengimpor file 'poli_item.dart', yang kemungkinan berisi implementasi item untuk daftar poli.
import 'poli_form.dart'; //Baris ini mengimpor file 'poli_form.dart', yang kemungkinan berisi implementasi formulir untuk menambahkan atau mengubah data poli.

class PoliPage extends StatefulWidget {
  //Baris ini mendefinisikan kelas 'PoliPage' yang merupakan turunan dari 'StatefulWidget'.
  const PoliPage({Key? key}); //adalah constructor untuk kelas 'PoliPage'.

  @override
  _PoliPageState createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          Sidebar(), // Ini menentukan widget yang akan ditampilkan di sisi layar (sidebar) menggunakan widget 'Sidebar'.
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        //Ini menentukan body dari Scaffold menggunakan ListView,
        children: [
          //menentukan daftar widget yang akan ditampilkan dalam ListView, yaitu daftar poli yang telah ditentukan sebelumnya menggunakan widget 'PoliItem'.

          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}
