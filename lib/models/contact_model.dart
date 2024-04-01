class ContactModel {
  String? email;
  String? subject;
  String? description;

  ContactModel({
    required this.email,
    required this.subject,
    required this.description,
  });

  ContactModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    subject = json['subject'];
    description = json['description'];
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'email': email,
      'subject': subject,
    };
  }
}
