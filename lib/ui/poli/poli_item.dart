import 'package:flutter/material.dart'; //Baris ini mengimpor pustaka flutter/material.dart yang diperlukan untuk menggunakan widget dan komponen UI dari Flutter.
import '../../model/poli.dart'; // Baris ini mengimpor file poli.dart dari direktori model yang berada di luar direktori saat ini. File tersebut kemungkinan berisi definisi kelas Poli.
import 'poli_detail.dart'; //Baris ini mengimpor file poli_detail.dart yang kemungkinan berisi definisi kelas PoliDetail.

class PoliItem extends StatelessWidget {
  final Poli poli;
  const PoliItem({Key? key, required this.poli}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // mendefinisikan fungsi yang akan dieksekusi ketika pengguna melakukan tap pada item.

        Navigator.push(
          //untuk menavigasi ke halaman baru. Ketika item di-tap, halaman PoliDetail akan ditampilkan.

          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        ); //mendefinisikan rute menggunakan MaterialPageRoute. Rute ini akan menampilkan halaman PoliDetail dengan mengirimkan data poli ke halaman tersebut.
      },
      child: Card(
        //mengembalikan sebuah Card yang akan menampilkan konten item.

        child: ListTile(
          // Baris ini mengembalikan sebuah ListTile yang akan menampilkan judul item.

          title: Text(
              "${poli.namaPoli}"), // mengatur teks judul ListTile dengan menggunakan nilai dari poli.namaPoli.
        ),
      ),
    );
  }
}
