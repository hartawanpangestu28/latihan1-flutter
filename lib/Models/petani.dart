class Petani {
  Petani({
    required this.idPenjual,
    required this.nama,
    required this.nik,
    required this.alamat,
    required this.telp,
    required this.foto,
    required this.status,
    required this.idKelompokTani,
    required this.namaKelompok,
    required this.createdAt,
    required this.updatedAt,
  });
  int idPenjual;
  String nama;
  String nik;
  String alamat;
  String foto;
  String telp;
  int idKelompokTani;
  String status;
  String namaKelompok;
  String updatedAt;
  String createdAt;

  factory Petani.fromJson(Map<String, dynamic> json) => Petani(
        idPenjual: json["idPenjual"],
        nama: json["nama"].toString(),
        nik: json["nik"].toString(),
        alamat: json["alamat"].toString(),
        telp: json["telp"].toString(),
        foto: json["foto"].toString(),
        status: json["status"].toString(),
        idKelompokTani: json["idKelompokTani"],
        namaKelompok: json["namaKelompok"].toString(),
        createdAt: json["createdAt"].toString(),
        updatedAt: json["updatedAt"].toString(),
      );
}
