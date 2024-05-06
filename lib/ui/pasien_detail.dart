import 'package:flutter/material.dart'; //pernyataan impor yang mengimpor paket flutter/material.dart.
import 'pasien_page.dart'; //pernyataan impor untuk mengimpor file pasien_page.dart. File ini mungkin berisi definisi halaman Pasien.
import 'pasien_update_form.dart'; //pernyataan impor untuk mengimpor file pasien_update_form.dart. File ini mungkin berisi definisi form untuk mengubah data pasien.
import '../model/pasien.dart'; // pernyataan impor untuk mengimpor file pasien.dart dari direktori teratas dalam struktur proyek.

class PasienDetail extends StatefulWidget {
  //kelas PasienDetail yang merupakan turunan dari kelas StatefulWidget.
  final Pasien pasien; //deklarasi variabel pasien yang bertipe Pasien.

  const PasienDetail(
      {super.key, required this.pasien}); // konstruktor kelas PasienDetail.

  @override // anotasi yang menandakan bahwa metode yang mengikuti ini akan menggantikan (override) metode dengan nama yang sama dari kelas induk.
  State<PasienDetail> createState() =>
      _PasienDetailState(); //digunakan untuk membuat instance dari kelas _PasienDetailState, yang merupakan kelas yang mengelola keadaan (state) dari widget PasienDetail.
}

class _PasienDetailState extends State<PasienDetail> {
  //Kelas ini bertanggung jawab untuk mengelola keadaan (state) dari widget PasienDetail.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Pasien")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "ID Pasien : ${widget.pasien.idPasien}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor RM : ${widget.pasien.nomor_rm}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor Telepon : ${widget.pasien.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
              height:
                  20), //Ini adalah widget SizedBox yang digunakan untuk memberikan jarak vertikal sebesar 20 piksel.
          Row(
            //digunakan untuk mengatur widget-widget lain secara horizontal dalam bentuk baris.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PasienUpdateForm(pasien: widget.pasien)));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 38, 189, 44)),
        child: const Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin ingin menghapus data ini?"),
            actions: [
              // tombol ya
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PasienPage()));
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
              )
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
