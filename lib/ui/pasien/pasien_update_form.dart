import 'package:flutter/material.dart'; //Package ini menyediakan widget dan komponen UI untuk membangun aplikasi Flutter.
import '../../model/pasien.dart'; //file ini berisi definisi kelas Pasien yang digunakan dalam aplikasi.
import 'pasien_detail.dart'; //mengasumsikan bahwa file tersebut berisi implementasi halaman detail pasien.

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;

  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPasienCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPasienCtrl.text = widget.pasien.namaPasien;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Data")),
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
    //menyimpan perubahan yang telah dilakukan pada nama pasien.
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = new Pasien(namaPasien: _namaPasienCtrl.text);
          Navigator.pop(context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan Perubahan"));
  }
}
