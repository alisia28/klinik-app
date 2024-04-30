import 'package:flutter/material.dart'; //Baris ini mengimpor pustaka flutter/material.dart yang diperlukan untuk menggunakan widget dan komponen UI dari Flutter.
import '../model/poli.dart'; // Baris ini mengimpor file poli.dart dari direktori model yang berada di luar direktori saat ini. File tersebut kemungkinan berisi definisi kelas Poli.
import 'poli_detail.dart'; //Baris ini mengimpor file poli_detail.dart yang kemungkinan berisi definisi kelas PoliDetail.

// Baris ini mendeklarasikan kelas PoliItem yang merupakan turunan dari StatelessWidget. Kelas ini digunakan untuk membuat item yang akan ditampilkan dalam daftar.
class PoliItem extends StatelessWidget {
  final Poli
      poli; //Baris ini mendeklarasikan variabel poli yang bertipe Poli. Variabel ini akan digunakan untuk menyimpan data spesifik dari setiap item PoliItem.

  const PoliItem({Key? key, required this.poli})
      : super(
            key:
                key); // Constructor ini menerima parameter key yang bertipe Key opsional dan parameter poli yang harus diisi. Nilai key digunakan untuk mengidentifikasi widget dalam pohon widget. Parameter poli digunakan untuk menginisialisasi variabel poli pada baris 5.

  @override //digunakan untuk menandakan bahwa metode yang akan ditulis selanjutnya akan menggantikan metode yang telah didefinisikan dalam kelas induknya.

  Widget build(BuildContext context) {
    //menerima parameter BuildContext context yang digunakan untuk mengakses konteks aplikasi

    return GestureDetector(
      // Baris ini mengembalikan sebuah GestureDetector yang digunakan untuk mendeteksi interaksi pengguna dengan item.

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
