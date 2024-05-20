import 'package:flutter/material.dart'; // Baris ini mengimpor pustaka material dari Flutter, yang menyediakan widget, kelas, dan fungsi yang mengimplementasikan Desain Material.
import '../../model/pegawai.dart'; // Baris ini mengimpor file 'pegawai.dart'
import 'pegawai_detail.dart'; //Baris ini mengimpor file 'pegawai_detail.dart'

class PegawaiItem extends StatelessWidget {
  final Pegawai pegawai;

  const PegawaiItem({super.key, required this.pegawai});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${pegawai.namaPegawai}"),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, // Context diperlukan agar navigasi berfungsi dengan benar.
            MaterialPageRoute(
                builder: (context) => PegawaiDetail(pegawai: pegawai)));
      },
    );
  }
}
