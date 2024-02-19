// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

Staff staffFromJson(String str) => Staff.fromJson(json.decode(str));

String staffToJson(Staff data) => json.encode(data.toJson());

class Staff {
  String staffCatagory;
  String sId;
  String fullName;
  String mobileNumber;
  String gender;
  String age;
  String aadharNumber;
  String address;
  String staffProfile;

  Staff({
    required this.staffCatagory,
    required this.sId,
    required this.fullName,
    required this.mobileNumber,
    required this.gender,
    required this.age,
    required this.aadharNumber,
    required this.address,
    required this.staffProfile,
  });

  factory Staff.fromJson(Map<String, dynamic> json) => Staff(
        staffCatagory: json["staffCatagory"],
        sId: json["sId"],
        fullName: json["fullName"],
        mobileNumber: json["mobileNumber"],
        gender: json["gender"],
        age: json["age"],
        aadharNumber: json["aadharNumber"],
        address: json["address"],
        staffProfile: json["staffProfile"],
      );

  Map<String, dynamic> toJson() => {
        "staffCatagory": staffCatagory,
        "sId": sId,
        "fullName": fullName,
        "mobileNumber": mobileNumber,
        "gender": gender,
        "age": age,
        "aadharNumber": aadharNumber,
        "address": address,
        "staffProfile": staffProfile,
      };
}
