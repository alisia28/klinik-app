class Pasien {
  //baris ini menandakan awal dari definisi kelas Pasien.

  String? id; //deklarasi variabel id dengan tipe data String?.
  String namaPasien; //variabel namaPasien dengan tipe data String
  Pasien(
      {this.id,
      required this.namaPasien}); //konstruktor ini digunakan untuk membuat objek Pasien baru.
  get idPasien =>
      'id'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'id'.
  get nomor_rm =>
      'nomor rm'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'nomor rm'.
  get tanggal_lahir =>
      'tanggal lahir'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'tanggal lahir'.
  get nomor_telepon =>
      'nomor telepon'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'nomor telepon'.
  get alamat =>
      'alamat'; //ini adalah getter (metode akses) yang mengembalikan nilai 'alamat'
}
