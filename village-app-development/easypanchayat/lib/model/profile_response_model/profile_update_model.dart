// To parse this JSON data, do
//
//     final updateUserProfileDataModel = updateUserProfileDataModelFromJson(jsonString);

import 'dart:convert';

UpdateUserProfileDataModel updateUserProfileDataModelFromJson(String str) => UpdateUserProfileDataModel.fromJson(json.decode(str));

String updateUserProfileDataModelToJson(UpdateUserProfileDataModel data) => json.encode(data.toJson());

class UpdateUserProfileDataModel {
    String? status;
    Data? data;
    String? message;

    UpdateUserProfileDataModel({
        this.status,
        this.data,
        this.message,
    });

    factory UpdateUserProfileDataModel.fromJson(Map<String, dynamic> json) => UpdateUserProfileDataModel(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
        "message": message,
    };
}

class Data {
    String? id;
    dynamic gpId;
    dynamic phoneNumber;
    dynamic panNumber;
    dynamic aadharNumber;
    String? firstName;
    dynamic middleName;
    dynamic lastName;
    String? motherName;
    dynamic villageNmae;
    dynamic wardNumber;
    dynamic wadiName;
    dynamic spouseName;
    dynamic whatsappNumber;
    dynamic email;
    dynamic aadharImg;
    dynamic panImg;
    dynamic religion;
    dynamic categories;
    dynamic subcategory;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Data({
        this.id,
        this.gpId,
        this.phoneNumber,
        this.panNumber,
        this.aadharNumber,
        this.firstName,
        this.middleName,
        this.lastName,
        this.motherName,
        this.villageNmae,
        this.wardNumber,
        this.wadiName,
        this.spouseName,
        this.whatsappNumber,
        this.email,
        this.aadharImg,
        this.panImg,
        this.religion,
        this.categories,
        this.subcategory,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        gpId: json["gpId"],
        phoneNumber: json["phoneNumber"],
        panNumber: json["panNumber"],
        aadharNumber: json["aadharNumber"],
        firstName: json["FirstName"],
        middleName: json["MiddleName"],
        lastName: json["LastName"],
        motherName: json["MotherName"],
        villageNmae: json["villageNmae"],
        wardNumber: json["wardNumber"],
        wadiName: json["wadiName"],
        spouseName: json["SpouseName"],
        whatsappNumber: json["WhatsappNumber"],
        email: json["Email"],
        aadharImg: json["aadharImg"],
        panImg: json["panImg"],
        religion: json["Religion"],
        categories: json["categories"],
        subcategory: json["Subcategory"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "gpId": gpId,
        "phoneNumber": phoneNumber,
        "panNumber": panNumber,
        "aadharNumber": aadharNumber,
        "FirstName": firstName,
        "MiddleName": middleName,
        "LastName": lastName,
        "MotherName": motherName,
        "villageNmae": villageNmae,
        "wardNumber": wardNumber,
        "wadiName": wadiName,
        "SpouseName": spouseName,
        "WhatsappNumber": whatsappNumber,
        "Email": email,
        "aadharImg": aadharImg,
        "panImg": panImg,
        "Religion": religion,
        "categories": categories,
        "Subcategory": subcategory,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
