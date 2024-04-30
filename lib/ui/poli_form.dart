import 'package:flutter/material.dart'; //Baris ini mengimpor pustaka flutter/material.dart yang diperlukan untuk menggunakan widget dan komponen UI dari Flutter.

class PoliForm extends StatefulWidget {
  //Baris ini mendefinisikan kelas PoliForm yang merupakan turunan dari StatefulWidget. Kelas ini digunakan untuk membuat halaman formulir untuk menambahkan poli.

  const PoliForm({Key? key})
      : super(
            key:
                key); //Baris ini mendefinisikan konstruktor untuk kelas PoliForm. Konstruktor ini tidak mengambil parameter dan menggunakan key opsional.

  @override
  _PoliFormState createState() =>
      _PoliFormState(); //mendefinisikan metode createState yang mengembalikan instance dari kelas _PoliFormState.
}

class _PoliFormState extends State<PoliForm> {
  //mendefinisikan kelas _PoliFormState yang merupakan implementasi dari State untuk PoliForm.
  final _formKey = GlobalKey<FormState>();
// mendeklarasikan variabel _formKey yang merupakan kunci untuk mengakses dan memvalidasi formulir. GlobalKey digunakan untuk mengelola state formulir.
  @override
  Widget build(BuildContext context) {
    //mendefinisikan metode build yang akan mengembalikan widget yang akan ditampilkan. Metode ini menerima parameter BuildContext context yang digunakan untuk mengakses konteks aplikasi.

    return Scaffold(
      // mengembalikan sebuah Scaffold yang digunakan sebagai kerangka halaman.
      appBar: AppBar(
          title: const Text(
              "Tambah Poli")), //mengatur AppBar sebagai bagian atas halaman dengan judul "Tambah Poli".
      body: SingleChildScrollView(
        //mengatur tubuh halaman dengan menggunakan SingleChildScrollView, yang memungkinkan kontennya dapat digulir jika tidak cukup ruang.

        child: Form(
          //digunakan untuk mengelola formulir dan validasi.
          key:
              _formKey, //mengatur properti key pada widget Form dengan menggunakan kunci _formKey yang telah dideklarasikan sebelumnya.

          child: Column(
            //menempatkan widget Column di dalam Form. Column digunakan untuk mengatur tata letak vertikal dari widget-widget di dalamnya.

            children: [
              TextField(
                // input teks yang memungkinkan pengguna untuk memasukkan nama poli

                decoration: const InputDecoration(labelText: "Nama Poli"),
              ),
              SizedBox(
                  height:
                      20), //digunakan untuk memberikan jarak vertikal antara elemen-elemen

              ElevatedButton(
                // tombol untuk menyimpan formulir.
                onPressed: () {},
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
