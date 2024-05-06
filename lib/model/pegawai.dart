class Pegawai {
  //Baris ini menandakan awal dari definisi kelas Pegawai.

  String? id; //deklarasi variabel id dengan tipe data String?.
  String namaPegawai; // deklarasi variabel namaPegawai dengan tipe data String.
  Pegawai(
      {this.id,
      required this.namaPegawai}); //Konstruktor ini digunakan untuk membuat objek Pegawai baru.
  get idPegawai =>
      'id'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'id'.
  get nip =>
      'nip'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'nip'.
  get tanggal_lahir =>
      'tanggal lahir'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'tanggal lahir'.
  get nomor_telepon =>
      'nomor telepon'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'nomor telepon'.
  get email =>
      'email'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'email'.
  get password =>
      'password'; //Ini adalah getter (metode akses) yang mengembalikan nilai 'password'.
}
