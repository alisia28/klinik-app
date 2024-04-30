//mengimpor paket-paket yang diperlukan untuk mengakses widget-widget Flutter dan file model poli.dart.
import 'package:flutter/material.dart';
import '../model/poli.dart';

//kelas yang mewakili halaman detail poli. Kelas ini merupakan turunan dari StatefulWidget, yang berarti halaman ini dapat memiliki state yang berubah.
// Properti poli bertipe Poli dan digunakan untuk menyimpan data poli yang akan ditampilkan di halaman detail.
class PoliDetail extends StatefulWidget {
  final Poli poli;

//constructor dari kelas PoliDetail yang menginisialisasi properti poli dengan nilai yang diberikan saat membuat instance PoliDetail.
  const PoliDetail({super.key, required this.poli});

  //menggantikan metode createState() dari StatefulWidget dan mengembalikan instance dari _PoliDetailState,
  //yang merupakan kelas State untuk PoliDetail.
  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

//Ini adalah kelas state yang terkait dengan PoliDetail. Kelas ini merupakan turunan dari State<PoliDetail> dan berisi logika untuk membangun tampilan halaman detail poli.
class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Poli")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
              height:
                  20), //SizedBox digunakan untuk memberikan jarak vertikal di antara elemen-elemen.
          Row(
            //Row yang berisi dua ElevatedButton (tombol yang ditinggikan) dengan teks "Ubah" dan "Hapus" masing-masing. Tombol-tombol ini tidak memiliki fungsi yang ditentukan (onPressed: () {}) dalam contoh ini.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
