import 'package:flutter/material.dart'; // pernyataan impor yang mengimpor paket flutter/material.dart.
import '../model/pasien.dart'; //pernyataan impor untuk mengimpor file pasien.dart dari direktori yang satu tingkat di atas dalam struktur proyek.
import 'pasien_detail.dart'; //pernyataan impor untuk mengimpor file pasien_detail.dart.

class PasienItem extends StatelessWidget {
  //definisi kelas PasienItem yang merupakan turunan dari kelas StatelessWidget.
  final Pasien
      pasien; //Variabel ini akan digunakan untuk menyimpan data pasien yang akan ditampilkan.

  const PasienItem(
      {super.key, required this.pasien}); //konstruktor kelas PasienItem.

  @override
  Widget build(BuildContext context) {
    // metode build yang menggantikan metode build dari kelas StatelessWidget.
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${pasien.namaPasien}"),
        ),
      ),
      onTap: () {
        Navigator.push(
            // metode push dari kelas Navigator.
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(pasien: pasien)));
      },
    );
  }
}
