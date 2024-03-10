// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

Hospital hospitalFromJson(String str) => Hospital.fromJson(json.decode(str));

String hospitalToJson(Hospital data) => json.encode(data.toJson());

class Hospital {
  String hID;
  String hospitalName;
  String mobileNumber;
  String email;
  String address;
  String upiId;
  String password;
  String hospitalImage;
  String hospitalCertificate;
  String twoFactor;

  Hospital({
    required this.hID,
    required this.hospitalName,
    required this.mobileNumber,
    required this.email,
    required this.address,
    required this.upiId,
    required this.password,
    required this.hospitalImage,
    required this.hospitalCertificate,
    required this.twoFactor,
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
        hID: json['hId'],
        twoFactor: json['twoFactor'],
      );

  Map<String, dynamic> toJson() => {
        "hId": hID,
        "hospitalName": hospitalName,
        "mobileNumber": mobileNumber,
        "email": email,
        "address": address,
        "upiId": upiId,
        "password": password,
        "hospitalImage": hospitalImage,
        "hospitalCertificate": hospitalCertificate,
        "twoFactor": twoFactor,
      };
}
