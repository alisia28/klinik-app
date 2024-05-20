import 'package:flutter/material.dart'; // Baris ini mengimpor pustaka material dari Flutter
import 'poli_update_form.dart'; // Baris ini mengimpor file 'poli_update_form.dart',
import '../../model/poli.dart'; //Baris ini mengimpor file 'poli.dart' dari jalur relatif.
import 'poli_page.dart'; //Baris ini mengimpor file 'poli_page.dart',

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({Key? key, required this.poli});

  @override
  _PoliDetailState createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Poli")),
      body: Column(
        children: [
          SizedBox(
              height:
                  20), // menambahkan kotak kosong (SizedBox) dengan tinggi 20 piksel
          Text(
            "Nama Poli: ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
              height:
                  20), // menambahkan kotak kosong (SizedBox) dengan tinggi 20 piksel
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tombolUbah() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliUpdateForm(poli: widget.poli),
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text("Ubah"),
    );
  }

  Widget _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: const Text("Yakin ingin menghapus data ini?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PoliPage()),
                );
              },
              child: const Text("YA"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Tidak"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        );
        showDialog(context: context, builder: (context) => alertDialog);
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text("Hapus"),
    );
  }
}
