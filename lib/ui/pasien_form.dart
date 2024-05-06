import 'package:flutter/material.dart'; //pernyataan impor yang mengimpor paket flutter/material.dart.
import '../model/pasien.dart'; //pernyataan impor untuk mengimpor file pasien.dart dari direktori yang satu tingkat di atas dalam struktur proyek.
import 'pasien_detail.dart'; //pernyataan impor untuk mengimpor file pasien_detail.dart.
import 'pasien_page.dart'; //pernyataan impor untuk mengimpor file pasien_page.dart.

class PasienForm extends StatefulWidget {
  //definisi kelas PasienForm yang merupakan turunan dari kelas StatefulWidget.
  const PasienForm({Key? key})
      : super(key: key); // konstruktor kelas PasienForm.
  _PasienFormState createState() =>
      _PasienFormState(); // Metode ini digunakan untuk membuat instance dari kelas _PasienFormState, yang merupakan kelas yang mengelola keadaan (state) dari widget PasienForm.
}

class _PasienFormState extends State<PasienForm> {
  //kelas _PasienFormState yang merupakan turunan dari kelas State dengan parameter tipe PasienForm.
  final _formKey = GlobalKey<
      FormState>(); //Variabel ini digunakan untuk mengakses dan memvalidasi status formulir.
  final _namaPasienCtrl =
      TextEditingController(); //digunakan untuk mengontrol dan mendapatkan teks yang dimasukkan di dalam TextField.

  @override
  Widget build(BuildContext context) {
    //metode build yang menggantikan metode build dari kelas _PasienFormState.
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Data")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPasien(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Data"),
      controller: _namaPasienCtrl,
    );
  }

  _tombolSimpan() {
    //Metode ini mengembalikan widget ElevatedButton yang digunakan untuk menyimpan data pasien.
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = new Pasien(namaPasien: _namaPasienCtrl.text);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan"));
  }
}
