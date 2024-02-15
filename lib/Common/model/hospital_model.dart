import 'dart:convert';

Hospital hospitalFromJson(String str) => Hospital.fromJson(json.decode(str));

String hospitalToJson(Hospital data) => json.encode(data.toJson());

class Hospital {
  String hospitalName;
  String mobileNumber;
  String email;
  String address;
  String upiId;
  String password;
  String hospitalImage;
  String hospitalCertificate;

  Hospital({
    required this.hospitalName,
    required this.mobileNumber,
    required this.email,
    required this.address,
    required this.upiId,
    required this.password,
    required this.hospitalImage,
    required this.hospitalCertificate,
  });

  factory Hospital.fromJson(Map<String, dynamic> json) => Hospital(
        hospitalName: json["hospitalName"],
        mobileNumber: json["mobileNumber"],
        email: json["email"],
        address: json["address"],
        upiId: json["upiId"],
        password: json["password"],
        hospitalImage: json["hospitalImage"],
        hospitalCertificate: json["hospitalCertificate"],
      );

  Map<String, dynamic> toJson() => {
        "hospitalName": hospitalName,
        "mobileNumber": mobileNumber,
        "email": email,
        "address": address,
        "upiId": upiId,
        "password": password,
        "hospitalImage": hospitalImage,
        "hospitalCertificate": hospitalCertificate,
      };
}
