import 'dart:convert';

Doctor doctorFromJson(String str) => Doctor.fromJson(json.decode(str));

String doctorToJson(Doctor data) => json.encode(data.toJson());

class Doctor {
  String dId;
  String hospitalRef;
  String fullName;
  String mobileNumber;
  String email;
  String age;
  String gender;
  String address;
  String aadharNumber;
  String qualification;
  String specialist;
  String profileLink;

  Doctor({
    required this.dId,
    required this.hospitalRef,
    required this.fullName,
    required this.mobileNumber,
    required this.email,
    required this.age,
    required this.gender,
    required this.address,
    required this.aadharNumber,
    required this.qualification,
    required this.specialist,
    required this.profileLink,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        dId: json['dId'],
        hospitalRef: json['hospitalRef'],
        fullName: json['fullName'],
        mobileNumber: json['mobileNumber'],
        email: json['email'],
        age: json['age'],
        gender: json['gender'],
        address: json['address'],
        aadharNumber: json['aadharNumber'],
        qualification: json['qualification'],
        specialist: json['specialist'],
        profileLink: json['profileLink'],
      );

  Map<String, dynamic> toJson() => {
        "dId": dId,
        "hospitalRef": hospitalRef,
        "fullName": fullName,
        "mobileNumber": mobileNumber,
        "email": email,
        "age": age,
        "gender": gender,
        "address": address,
        "aadharNumber": aadharNumber,
        "qualification": qualification,
        "specialist": specialist,
        "profileLink": profileLink,
      };
}
