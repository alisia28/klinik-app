import 'package:flutter/material.dart'; // Baris ini mengimpor pustaka material dari Flutter
import 'poli_update_form.dart'; // Baris ini mengimpor file 'poli_update_form.dart',
import '../model/poli.dart'; //Baris ini mengimpor file 'poli.dart' dari jalur relatif.
import 'poli_page.dart'; //Baris ini mengimpor file 'poli_page.dart',

class PoliDetail extends StatefulWidget {
  //Baris ini mendefinisikan sebuah kelas 'PoliDetail' yang merupakan turunan dari 'StatefulWidget'.
  final Poli
      poli; //mendefinisikan variabel 'poli' yang akan menyimpan data poli yang akan ditampilkan.

  const PoliDetail(
      {Key? key, required this.poli}); // constructor untuk kelas 'PoliDetail'.

  @override
  _PoliDetailState createState() =>
      _PoliDetailState(); //metode yang mengembalikan objek dari kelas '_PoliDetailState',
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    // metode 'build' yang akan merender tampilan widget 'PoliDetail'.
    return Scaffold(
      appBar: AppBar(title: Text("Detail Poli")),
      body: Column(
        children: [
          SizedBox(
              height:
                  20), // menambahkan kotak kosong (SizedBox) dengan tinggi 20 piksel untuk memberikan ruang di antara elemen-elemen.
          Text(
            "Nama Poli: ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
              height:
                  20), // menambahkan kotak kosong (SizedBox) dengan tinggi 20 piksel untuk memberikan ruang di antara elemen-elemen.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), //Ini memanggil method '_tombolUbah()' yang akan mengembalikan tombol "Ubah".
              _tombolHapus(), //Ini memanggil method '_tombolHapus()' yang akan mengembalikan tombol "Hapus".
            ],
          ),
        ],
      ),
    );
  }

  Widget _tombolUbah() {
    //adalah method yang mengembalikan tombol "Ubah"
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
    // Ini adalah method yang mengembalikan tombol "Hapus".
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: const Text("Yakin ingin menghapus data ini?"),
          actions: [
            // tombol ya
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
            // tombol batal
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
