import 'package:flutter/material.dart'; // pernyataan impor yang mengimpor paket flutter/material.dart.
import '../../model/pasien.dart'; //pernyataan impor untuk mengimpor file pasien.dart
import 'pasien_detail.dart'; //pernyataan impor untuk mengimpor file pasien_detail.dart.

class PasienItem extends StatelessWidget {
  final Pasien
      pasien; // digunakan untuk menyimpan data pasien yang akan ditampilkan.

  const PasienItem({super.key, required this.pasien});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${pasien.namaPasien}"),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(pasien: pasien)));
      },
    );
  }
}
