class UserModel {
  String? name;
  String? email;
  String? uId;
  String? image;
  String? cover;
  String? bio;
  String? phone;

  UserModel({
    required this.uId,
    required this.email,
    required this.name,
    required this.cover,
    required this.image,
    required this.bio,
    required this.phone,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    uId = json['uId'];
    image = json['image'];
    cover = json['cover'];
    bio = json['bio'];
    phone = json['phone'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'uId': uId,
      'image': image,
      'cover': cover,
      'bio': bio,
      'phone': phone,
    };
  }
}
