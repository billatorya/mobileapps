class User {
  final int id_user;
  final String nama_user;
  final String notelp_user;

  User({this.id_user, this.nama_user, this.notelp_user});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id_user: json['id_user'],
      nama_user: json['nama_user'],
      notelp_user: json['notelp_user'],
    );
  }

  Map<String, dynamic> toJson() => {
    'Nama': nama_user,
    'No. Telp': notelp_user,
  };
}