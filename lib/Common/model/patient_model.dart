import 'dart:convert';

Patient doctorFromJson(String str) => Patient.fromJson(json.decode(str));

String doctorToJson(Patient data) => json.encode(data.toJson());

class Patient {
  String pId;
  String hospitalRef;
  String doctorRef;
  String name;
  String mobileNumber;
  String email;
  String age;
  String gender;
  String bloodGroup;
  String address;
  String pickImage;
  String disease;
  String adminDate;
  String payAmount;
  String roomNo;
  String wardNo;

  Patient({
    required this.pId,
    required this.hospitalRef,
    required this.doctorRef,
    required this.name,
    required this.mobileNumber,
    required this.email,
    required this.age,
    required this.gender,
    required this.bloodGroup,
    required this.address,
    required this.pickImage,
    required this.disease,
    required this.adminDate,
    required this.payAmount,
    required this.roomNo,
    required this.wardNo,
  });

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        pId: json['pId'],
        hospitalRef: json['hospitalRef'],
        doctorRef: json['doctorRef'],
        name: json['name'],
        mobileNumber: json['mobileNumber'],
        email: json['email'],
        age: json['age'],
        gender: json['gender'],
        bloodGroup: json['bloodGroup'],
        address: json['address'],
        pickImage: json['pickImage'],
        disease: json['disease'],
        adminDate: json['adminDate'],
        payAmount: json['payAmount'],
        roomNo: json['roomNo'],
        wardNo: json['wardNo'],
      );
  Map<String, dynamic> toJson() => {
        "pId": pId,
        "hospitalRef": hospitalRef,
        "doctorRef": doctorRef,
        "name": name,
        "mobileNumber": mobileNumber,
        "email": email,
        "age": age,
        "gender": gender,
        "bloodGroup": bloodGroup,
        "address": address,
        "pickImage": pickImage,
        "disease": disease,
        "adminDate": adminDate,
        "payAmount": payAmount,
        "roomNo": roomNo,
        "wardNo": wardNo,
      };
}
