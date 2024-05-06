import 'package:flutter/material.dart'; //Baris ini mengimpor pustaka material dari Flutter yang diperlukan untuk membangun antarmuka pengguna
import '../model/poli.dart'; //baris ini mengimpor file 'poli.dart' dari jalur relatif.
import 'poli_detail.dart'; // Baris ini mengimpor file 'poli_detail.dart',

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //adalah metode 'build' yang akan merender tampilan widget 'PoliDetail'.
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  _fieldNamaPoli() {
    //mengembalikan sebuah widget TextField yang digunakan untuk memasukkan atau mengubah nama poli.
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

  _tombolSimpan() {
    //mengembalikan sebuah widget ElevatedButton yang bertindak sebagai tombol untuk menyimpan data poli.
    return ElevatedButton(
      onPressed: () {
        Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
      child: const Text("Simpan"),
    );
  }
}
