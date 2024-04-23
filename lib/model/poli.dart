class Poli {
  //Baris ini mendefinisikan sebuah kelas bernama Poli.
  String?
      id; //Baris ini mendeklarasikan sebuah variabel id dengan tipe data String yang dapat menjadi null (null safety). Tanda tanya (?) menandakan bahwa variabel ini dapat bernilai null.
  String
      namaPoli; //Baris ini mendeklarasikan sebuah variabel namaPoli dengan tipe data String. Variabel ini merupakan nama dari poliklinik dan harus diisi (required).
  Poli(
      {this.id,
      required this.namaPoli}); //Baris ini mendefinisikan sebuah konstruktor untuk kelas Poli. Konstruktor ini memiliki dua parameter yaitu id (opsional) dan namaPoli (wajib diisi). Dengan menggunakan sintaksis {} pada deklarasi konstruktor, kita dapat menginisialisasi objek Poli dengan menyebutkan nama parameter saat membuat objek tersebut.
}
