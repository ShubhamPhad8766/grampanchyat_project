// To parse this JSON data, do
//
//     final userProfileDataModel = userProfileDataModelFromJson(jsonString);

import 'dart:convert';

UserProfileDataModel userProfileDataModelFromJson(String str) => UserProfileDataModel.fromJson(json.decode(str));

String userProfileDataModelToJson(UserProfileDataModel data) => json.encode(data.toJson());

class UserProfileDataModel {
    String? status;
    Data? data;

    UserProfileDataModel({
        this.status,
        this.data,
    });

    factory UserProfileDataModel.fromJson(Map<String, dynamic> json) => UserProfileDataModel(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
    };
}

class Data {
    String? id;
    GpId? gpId;
    Religion? religion;
    WardNumber? wardNumber;
    WadiName? wadiName;
    Categories? categories;
    int? phoneNumber;
    String? panNumber;
    String? aadharNumber;
    String? firstName;
    String? signUrl;
    String? middleName;
    String? lastName;
    String? motherName;
    dynamic name;
    String? spouseName;
    String? gender;
    DateTime? dob;
    String? aadress;
    String? passport;
    String? whatsappNumber;
    String? email;
    String? aadharImg;
    String? c;
    String? subcategory;
    String? children;
    int? citizenId;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Data({
        this.id,
        this.gpId,
        this.religion,
        this.wardNumber,
        this.wadiName,
        this.categories,
        this.phoneNumber,
        this.panNumber,
        this.aadharNumber,
        this.firstName,
        this.signUrl,
        this.middleName,
        this.lastName,
        this.motherName,
        this.name,
        this.spouseName,
        this.gender,
        this.dob,
        this.aadress,
        this.passport,
        this.whatsappNumber,
        this.email,
        this.aadharImg,
        this.c,
        this.subcategory,
        this.children,
        this.citizenId,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        gpId: json["gpId"] == null ? null : GpId.fromJson(json["gpId"]),
        religion: json["Religion"] == null ? null : Religion.fromJson(json["Religion"]),
        wardNumber: json["wardNumber"] == null ? null : WardNumber.fromJson(json["wardNumber"]),
        wadiName: json["wadiName"] == null ? null : WadiName.fromJson(json["wadiName"]),
        categories: json["categories"] == null ? null : Categories.fromJson(json["categories"]),
        phoneNumber: json["phoneNumber"],
        panNumber: json["panNumber"],
        aadharNumber: json["aadharNumber"],
        firstName: json["FirstName"],
        signUrl: json["signUrl"],
        middleName: json["MiddleName"],
        lastName: json["LastName"],
        motherName: json["MotherName"],
        name: json["name"],
        spouseName: json["SpouseName"],
        gender: json["Gender"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        aadress: json["aadress"],
        passport: json["Passport"],
        whatsappNumber: json["WhatsappNumber"],
        email: json["Email"],
        aadharImg: json["aadharImg"],
        c: json["c"],
        subcategory: json["Subcategory"],
        children: json["Children"],
        citizenId: json["citizenId"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "gpId": gpId?.toJson(),
        "Religion": religion?.toJson(),
        "wardNumber": wardNumber?.toJson(),
        "wadiName": wadiName?.toJson(),
        "categories": categories?.toJson(),
        "phoneNumber": phoneNumber,
        "panNumber": panNumber,
        "aadharNumber": aadharNumber,
        "FirstName": firstName,
        "signUrl": signUrl,
        "MiddleName": middleName,
        "LastName": lastName,
        "MotherName": motherName,
        "name": name,
        "SpouseName": spouseName,
        "Gender": gender,
        "dob": dob?.toIso8601String(),
        "aadress": aadress,
        "Passport": passport,
        "WhatsappNumber": whatsappNumber,
        "Email": email,
        "aadharImg": aadharImg,
        "c": c,
        "Subcategory": subcategory,
        "Children": children,
        "citizenId": citizenId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class Categories {
    String? id;
    String? name;
    int? groupId;
    int? v;

    Categories({
        this.id,
        this.name,
        this.groupId,
        this.v,
    });

    factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json["_id"],
        name: json["name"],
        groupId: json["groupId"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "groupId": groupId,
        "__v": v,
    };
}

class GpId {
    String? id;
    String? name;
    String? taluka;
    String? district;
    String? status;
    int? phoneNumber;
    String? lgdCode;
    String? primaryUserId;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? displayName;

    GpId({
        this.id,
        this.name,
        this.taluka,
        this.district,
        this.status,
        this.phoneNumber,
        this.lgdCode,
        this.primaryUserId,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.displayName,
    });

    factory GpId.fromJson(Map<String, dynamic> json) => GpId(
        id: json["_id"],
        name: json["name"],
        taluka: json["taluka"],
        district: json["district"],
        status: json["status"],
        phoneNumber: json["phoneNumber"],
        lgdCode: json["lgdCode"],
        primaryUserId: json["primaryUserId"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        displayName: json["displayName"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "taluka": taluka,
        "district": district,
        "status": status,
        "phoneNumber": phoneNumber,
        "lgdCode": lgdCode,
        "primaryUserId": primaryUserId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "displayName": displayName,
    };
}

class Religion {
    String? id;
    String? name;
    int? groupId;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Religion({
        this.id,
        this.name,
        this.groupId,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Religion.fromJson(Map<String, dynamic> json) => Religion(
        id: json["_id"],
        name: json["name"],
        groupId: json["groupId"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "groupId": groupId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class WadiName {
    String? id;
    GpId? gpId;
    String? villageName;
    String? wadiName;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    WadiName({
        this.id,
        this.gpId,
        this.villageName,
        this.wadiName,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory WadiName.fromJson(Map<String, dynamic> json) => WadiName(
        id: json["_id"],
        gpId: json["gpId"] == null ? null : GpId.fromJson(json["gpId"]),
        villageName: json["villageName"],
        wadiName: json["wadiName"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "gpId": gpId?.toJson(),
        "villageName": villageName,
        "wadiName": wadiName,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class WardNumber {
    String? id;
    int? wardNumber;
    String? villageName;
    List<dynamic>? wardNumbers;
    GpId? gpid;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    WardNumber({
        this.id,
        this.wardNumber,
        this.villageName,
        this.wardNumbers,
        this.gpid,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory WardNumber.fromJson(Map<String, dynamic> json) => WardNumber(
        id: json["_id"],
        wardNumber: json["wardNumber"],
        villageName: json["villageName"],
        wardNumbers: json["wardNumbers"] == null ? [] : List<dynamic>.from(json["wardNumbers"]!.map((x) => x)),
        gpid: json["gpid"] == null ? null : GpId.fromJson(json["gpid"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "wardNumber": wardNumber,
        "villageName": villageName,
        "wardNumbers": wardNumbers == null ? [] : List<dynamic>.from(wardNumbers!.map((x) => x)),
        "gpid": gpid?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}
