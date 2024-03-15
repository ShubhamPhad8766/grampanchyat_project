// To parse this JSON data, do
//
//     final signUpResponseModel = signUpResponseModelFromJson(jsonString);

import 'dart:convert';

SignUpResponseModel signUpResponseModelFromJson(String str) => SignUpResponseModel.fromJson(json.decode(str));

String signUpResponseModelToJson(SignUpResponseModel data) => json.encode(data.toJson());

class SignUpResponseModel {
    String? status;
    Data? data;
    String? token;

    SignUpResponseModel({
      this.status,
      this.data,
      this.token,
    });

    factory SignUpResponseModel.fromJson(Map<String, dynamic> json) => SignUpResponseModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
        "token": token,
    };
}

class Data {
    String name;
    dynamic password;
    String phoneNumber;
    String id;
    String middleName;
    String lastName;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    Data({
        required this.name,
        this.password,
        required this.phoneNumber,
        required this.id,
        required this.middleName,
        required this.lastName,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        password: json["password"],
        phoneNumber: json["phoneNumber"],
        id: json["_id"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "password": password,
        "phoneNumber": phoneNumber,
        "_id": id,
        "middle_name": middleName,
        "last_name": lastName,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}
