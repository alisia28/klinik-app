import 'package:flutter/material.dart'; // Baris ini mengimpor pustaka material dari Flutter yang diperlukan
import '../../model/poli.dart'; //Baris ini mengimpor file 'poli.dart' dari jalur relatif, yang berisi definisi model untuk poli.
import 'poli_detail.dart'; // Baris ini mengimpor file 'poli_detail.dart',digunakan untuk menampilkan detail poli setelah perubahan disimpan.

class PoliUpdateForm extends StatefulWidget {
  //mendefinisikan kelas 'PoliUpdateForm' yang merupakan turunan dari 'StatefulWidget'.
  final Poli poli;

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);
// constructor untuk kelas 'PoliUpdateForm'
  @override
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey = GlobalKey<
      FormState>(); //mendefinisikan sebuah GlobalKey yang digunakan untuk mengidentifikasi dan memanipulasi FormState.
  final _namaPoliCtrl =
      TextEditingController(); //mendefinisikan sebuah TextEditingController yang digunakan untuk mengontrol nilai yang dimasukkan dalam TextField untuk nama poli.

  @override
  void initState() {
    //metode initState yang dipanggil ketika widget pertama kali dibuat.
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
          //sebuah Form, yang digunakan untuk mengelompokkan dan mengelola sejumlah kecil field dalam sebuah form.
          key: _formKey,
          child: Column(
            children: [
              // menentukan daftar widget yang akan ditampilkan dalam Form,
              _fieldNamaPoli(),
              SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPoli() {
    // yang mengembalikan widget TextField untuk memasukkan atau mengubah nama poli.
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

  Widget _tombolSimpan() {
    //menyimpan perubahan yang telah dilakukan pada nama poli.
    return ElevatedButton(
      onPressed: () {
        Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
