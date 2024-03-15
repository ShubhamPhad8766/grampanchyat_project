// To parse this JSON data, do
//
//     final propertyListResponseModel = propertyListResponseModelFromJson(jsonString);

import 'dart:convert';

PropertyListResponseModel propertyListResponseModelFromJson(String str) => PropertyListResponseModel.fromJson(json.decode(str));

String propertyListResponseModelToJson(PropertyListResponseModel data) => json.encode(data.toJson());

class PropertyListResponseModel {
    String? status;
    List<Datum>? data;

    PropertyListResponseModel({
        this.status,
        this.data,
    });

    factory PropertyListResponseModel.fromJson(Map<String, dynamic> json) => PropertyListResponseModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    PropertyDetails? propertyDetails;
    String? id;
    GpId? gpId;
    CitizenId? citizenId;
    List<Owner>? owner;
    List<Floor>? floors;
    String? taxationPeriod;
    bool? hasFaucetConnection;
    bool? waterConnection;
    String? waterConnectionType;
    String? waterPrivateConnection;
    TotalTaxValues? totalTaxValues;
    List<dynamic>? occupant;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Datum({
        this.propertyDetails,
        this.id,
        this.gpId,
        this.citizenId,
        this.owner,
        this.floors,
        this.taxationPeriod,
        this.hasFaucetConnection,
        this.waterConnection,
        this.waterConnectionType,
        this.waterPrivateConnection,
        this.totalTaxValues,
        this.occupant,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        propertyDetails: json["propertyDetails"] == null ? null : PropertyDetails.fromJson(json["propertyDetails"]),
        id: json["_id"],
        gpId: json["gpId"] == null ? null : GpId.fromJson(json["gpId"]),
        citizenId: json["citizenId"] == null ? null : CitizenId.fromJson(json["citizenId"]),
        owner: json["owner"] == null ? [] : List<Owner>.from(json["owner"]!.map((x) => Owner.fromJson(x))),
        floors: json["floors"] == null ? [] : List<Floor>.from(json["floors"]!.map((x) => Floor.fromJson(x))),
        taxationPeriod: json["taxationPeriod"],
        hasFaucetConnection: json["hasFaucetConnection"],
        waterConnection: json["waterConnection"],
        waterConnectionType: json["waterConnectionType"],
        waterPrivateConnection: json["waterPrivateConnection"],
        totalTaxValues: json["totalTaxValues"] == null ? null : TotalTaxValues.fromJson(json["totalTaxValues"]),
        occupant: json["occupant"] == null ? [] : List<dynamic>.from(json["occupant"]!.map((x) => x)),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "propertyDetails": propertyDetails?.toJson(),
        "_id": id,
        "gpId": gpId?.toJson(),
        "citizenId": citizenId?.toJson(),
        "owner": owner == null ? [] : List<dynamic>.from(owner!.map((x) => x.toJson())),
        "floors": floors == null ? [] : List<dynamic>.from(floors!.map((x) => x.toJson())),
        "taxationPeriod": taxationPeriod,
        "hasFaucetConnection": hasFaucetConnection,
        "waterConnection": waterConnection,
        "waterConnectionType": waterConnectionType,
        "waterPrivateConnection": waterPrivateConnection,
        "totalTaxValues": totalTaxValues?.toJson(),
        "occupant": occupant == null ? [] : List<dynamic>.from(occupant!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class CitizenId {
    String? id;
    GpId? gpId;
    Religion? religion;
    Ward? wardNumber;
    Street? street;
    Religion? villageName;
    Categories? categories;
    int? phoneNumber;
    String? panNumber;
    int? aadharNumber;
    String? firstName;
    String? signUrl;
    String? middleName;
    String? lastName;
    String? motherName;
    String? spouseName;
    String? gender;
    DateTime? dob;
    String? aadress;
    String? passport;
    String? whatsappNumber;
    String? email;
    dynamic aadharImg;
    String? subcategory;
    String? children;
    int? citizenId;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    CitizenId({
        this.id,
        this.gpId,
        this.religion,
        this.wardNumber,
        this.street,
        this.villageName,
        this.categories,
        this.phoneNumber,
        this.panNumber,
        this.aadharNumber,
        this.firstName,
        this.signUrl,
        this.middleName,
        this.lastName,
        this.motherName,
        this.spouseName,
        this.gender,
        this.dob,
        this.aadress,
        this.passport,
        this.whatsappNumber,
        this.email,
        this.aadharImg,
        this.subcategory,
        this.children,
        this.citizenId,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory CitizenId.fromJson(Map<String, dynamic> json) => CitizenId(
        id: json["_id"],
        gpId: json["gpId"] == null ? null : GpId.fromJson(json["gpId"]),
        religion: json["Religion"] == null ? null : Religion.fromJson(json["Religion"]),
        wardNumber: json["wardNumber"] == null ? null : Ward.fromJson(json["wardNumber"]),
        street: json["street"] == null ? null : Street.fromJson(json["street"]),
        villageName: json["villageName"] == null ? null : Religion.fromJson(json["villageName"]),
        categories: json["categories"] == null ? null : Categories.fromJson(json["categories"]),
        phoneNumber: json["phoneNumber"],
        panNumber: json["panNumber"],
        aadharNumber: json["aadharNumber"],
        firstName: json["FirstName"],
        signUrl: json["signUrl"],
        middleName: json["MiddleName"],
        lastName: json["LastName"],
        motherName: json["MotherName"],
        spouseName: json["SpouseName"],
        gender: json["Gender"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        aadress: json["aadress"],
        passport: json["Passport"],
        whatsappNumber: json["WhatsappNumber"],
        email: json["Email"],
        aadharImg: json["aadharImg"],
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
        "street": street?.toJson(),
        "villageName": villageName?.toJson(),
        "categories": categories?.toJson(),
        "phoneNumber": phoneNumber,
        "panNumber": panNumber,
        "aadharNumber": aadharNumber,
        "FirstName": firstName,
        "signUrl": signUrl,
        "MiddleName": middleName,
        "LastName": lastName,
        "MotherName": motherName,
        "SpouseName": spouseName,
        "Gender": gender,
        "dob": dob?.toIso8601String(),
        "aadress": aadress,
        "Passport": passport,
        "WhatsappNumber": whatsappNumber,
        "Email": email,
        "aadharImg": aadharImg,
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
    Id? id;
    Name? name;
    Taluka? taluka;
    District? district;
    Status? status;
    int? phoneNumber;
    String? lgdCode;
    PrimaryUserId? primaryUserId;
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
        id: idValues.map[json["_id"]]!,
        name: nameValues.map[json["name"]]!,
        taluka: talukaValues.map[json["taluka"]]!,
        district: districtValues.map[json["district"]]!,
        status: statusValues.map[json["status"]]!,
        phoneNumber: json["phoneNumber"],
        lgdCode: json["lgdCode"],
        primaryUserId: primaryUserIdValues.map[json["primaryUserId"]]!,
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        displayName: json["displayName"],
    );

    Map<String, dynamic> toJson() => {
        "_id": idValues.reverse[id],
        "name": nameValues.reverse[name],
        "taluka": talukaValues.reverse[taluka],
        "district": districtValues.reverse[district],
        "status": statusValues.reverse[status],
        "phoneNumber": phoneNumber,
        "lgdCode": lgdCode,
        "primaryUserId": primaryUserIdValues.reverse[primaryUserId],
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "displayName": displayName,
    };
}

enum District {
    AHMEDNAGAR
}

final districtValues = EnumValues({
    "ahmednagar": District.AHMEDNAGAR
});

enum Id {
    THE_64_A404795_D89_CF1_A6_B984062
}

final idValues = EnumValues({
    "64a404795d89cf1a6b984062": Id.THE_64_A404795_D89_CF1_A6_B984062
});

enum Name {
    PAREGAON
}

final nameValues = EnumValues({
    "paregaon": Name.PAREGAON
});

enum PrimaryUserId {
    THE_64_A40478_AE6_F1_EDD8_A9494_F5
}

final primaryUserIdValues = EnumValues({
    "64a40478ae6f1edd8a9494f5": PrimaryUserId.THE_64_A40478_AE6_F1_EDD8_A9494_F5
});

enum Status {
    APPROVED
}

final statusValues = EnumValues({
    "APPROVED": Status.APPROVED
});

enum Taluka {
    SANGAMNER
}

final talukaValues = EnumValues({
    "sangamner": Taluka.SANGAMNER
});

class Religion {
    String? id;
    String? name;
    int? groupId;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    double? weightage;

    Religion({
        this.id,
        this.name,
        this.groupId,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.weightage,
    });

    factory Religion.fromJson(Map<String, dynamic> json) => Religion(
        id: json["_id"],
        name: json["name"],
        groupId: json["groupId"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        weightage: json["weightage"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "groupId": groupId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "weightage": weightage,
    };
}

class Street {
    String? id;
    String? description;
    String? villageName;
    GpId? gpId;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Street({
        this.id,
        this.description,
        this.villageName,
        this.gpId,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Street.fromJson(Map<String, dynamic> json) => Street(
        id: json["_id"],
        description: json["description"],
        villageName: json["villageName"],
        gpId: json["gpId"] == null ? null : GpId.fromJson(json["gpId"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "description": description,
        "villageName": villageName,
        "gpId": gpId?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class Ward {
    String? id;
    int? wardNumber;
    String? villageName;
    List<dynamic>? wardNumbers;
    GpId? gpid;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    Ward({
        this.id,
        this.wardNumber,
        this.villageName,
        this.wardNumbers,
        this.gpid,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory Ward.fromJson(Map<String, dynamic> json) => Ward(
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

class Floor {
    int? floorNo;
    ConstructionType? constructionType;
    int? length;
    int? width;
    int? areapersqrt;
    String? id;
    int? areapermeter;
    int? constructionRate;
    Religion? usage;
    String? year;
    int? waterTax;
    int? healthTax;
    int? lightTax;
    int? landRate;
    int? landValue;
    String? totalPropertyTax;
    String? propertyTax;
    double? weightage;
    String? buildingCapitalRate;
    dynamic landCapitalValue;
    String? totalCapital;
    double? depreciation;
    dynamic houseTaxdiscount;
    dynamic lightTaxdiscount;
    dynamic healthTaxdiscount;
    dynamic waterTaxdiscount;
    int? houseTaxRemainingAmount;
    int? lightTaxRemainingAmount;
    int? healthTaxRemainingAmount;
    int? waterTaxTaxRemainingAmount;
    String? totalHouseTaxSummary;
    String? totalLightTaxSummary;
    String? totalHealthTaxSummary;
    int? totalWaterTaxSummary;
    bool? active;
    bool? primaryUser;
    bool? tenant;
    String? descriptionOfIncome;
    String? remark;
    dynamic firstName;
    dynamic lastName;
    dynamic middleName;
    OwnerData? ownerData;

    Floor({
        this.floorNo,
        this.constructionType,
        this.length,
        this.width,
        this.areapersqrt,
        this.id,
        this.areapermeter,
        this.constructionRate,
        this.usage,
        this.year,
        this.waterTax,
        this.healthTax,
        this.lightTax,
        this.landRate,
        this.landValue,
        this.totalPropertyTax,
        this.propertyTax,
        this.weightage,
        this.buildingCapitalRate,
        this.landCapitalValue,
        this.totalCapital,
        this.depreciation,
        this.houseTaxdiscount,
        this.lightTaxdiscount,
        this.healthTaxdiscount,
        this.waterTaxdiscount,
        this.houseTaxRemainingAmount,
        this.lightTaxRemainingAmount,
        this.healthTaxRemainingAmount,
        this.waterTaxTaxRemainingAmount,
        this.totalHouseTaxSummary,
        this.totalLightTaxSummary,
        this.totalHealthTaxSummary,
        this.totalWaterTaxSummary,
        this.active,
        this.primaryUser,
        this.tenant,
        this.descriptionOfIncome,
        this.remark,
        this.firstName,
        this.lastName,
        this.middleName,
        this.ownerData,
    });

    factory Floor.fromJson(Map<String, dynamic> json) => Floor(
        floorNo: json["floorNo"],
        constructionType: json["constructionType"] == null ? null : ConstructionType.fromJson(json["constructionType"]),
        length: json["length"],
        width: json["width"],
        areapersqrt: json["areapersqrt"],
        id: json["_id"],
        areapermeter: json["areapermeter"],
        constructionRate: json["constructionRate"],
        usage: json["usage"] == null ? null : Religion.fromJson(json["usage"]),
        year: json["year"],
        waterTax: json["waterTax"],
        healthTax: json["healthTax"],
        lightTax: json["lightTax"],
        landRate: json["LandRate"],
        landValue: json["landValue"],
        totalPropertyTax: json["totalPropertyTax"],
        propertyTax: json["propertyTax"],
        weightage: json["weightage"]?.toDouble(),
        buildingCapitalRate: json["buildingCapitalRate"],
        landCapitalValue: json["landCapitalValue"],
        totalCapital: json["totalCapital"],
        depreciation: json["depreciation"]?.toDouble(),
        houseTaxdiscount: json["houseTaxdiscount"],
        lightTaxdiscount: json["lightTaxdiscount"],
        healthTaxdiscount: json["healthTaxdiscount"],
        waterTaxdiscount: json["waterTaxdiscount"],
        houseTaxRemainingAmount: json["houseTaxRemainingAmount"],
        lightTaxRemainingAmount: json["lightTaxRemainingAmount"],
        healthTaxRemainingAmount: json["healthTaxRemainingAmount"],
        waterTaxTaxRemainingAmount: json["waterTaxTaxRemainingAmount"],
        totalHouseTaxSummary: json["totalHouseTaxSummary"],
        totalLightTaxSummary: json["totalLightTaxSummary"],
        totalHealthTaxSummary: json["totalHealthTaxSummary"],
        totalWaterTaxSummary: json["totalWaterTaxSummary"],
        active: json["active"],
        primaryUser: json["primaryUser"],
        tenant: json["tenant"],
        descriptionOfIncome: json["descriptionOfIncome"],
        remark: json["remark"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        middleName: json["middleName"],
        ownerData: json["ownerData"] == null ? null : OwnerData.fromJson(json["ownerData"]),
    );

    Map<String, dynamic> toJson() => {
        "floorNo": floorNo,
        "constructionType": constructionType?.toJson(),
        "length": length,
        "width": width,
        "areapersqrt": areapersqrt,
        "_id": id,
        "areapermeter": areapermeter,
        "constructionRate": constructionRate,
        "usage": usage?.toJson(),
        "year": year,
        "waterTax": waterTax,
        "healthTax": healthTax,
        "lightTax": lightTax,
        "LandRate": landRate,
        "landValue": landValue,
        "totalPropertyTax": totalPropertyTax,
        "propertyTax": propertyTax,
        "weightage": weightage,
        "buildingCapitalRate": buildingCapitalRate,
        "landCapitalValue": landCapitalValue,
        "totalCapital": totalCapital,
        "depreciation": depreciation,
        "houseTaxdiscount": houseTaxdiscount,
        "lightTaxdiscount": lightTaxdiscount,
        "healthTaxdiscount": healthTaxdiscount,
        "waterTaxdiscount": waterTaxdiscount,
        "houseTaxRemainingAmount": houseTaxRemainingAmount,
        "lightTaxRemainingAmount": lightTaxRemainingAmount,
        "healthTaxRemainingAmount": healthTaxRemainingAmount,
        "waterTaxTaxRemainingAmount": waterTaxTaxRemainingAmount,
        "totalHouseTaxSummary": totalHouseTaxSummary,
        "totalLightTaxSummary": totalLightTaxSummary,
        "totalHealthTaxSummary": totalHealthTaxSummary,
        "totalWaterTaxSummary": totalWaterTaxSummary,
        "active": active,
        "primaryUser": primaryUser,
        "tenant": tenant,
        "descriptionOfIncome": descriptionOfIncome,
        "remark": remark,
        "firstName": firstName,
        "lastName": lastName,
        "middleName": middleName,
        "ownerData": ownerData?.toJson(),
    };
}

class ConstructionType {
    Tax? tax;
    String? id;
    String? type;
    int? constructionRatePerSqMeter;
    TaxationPeriod? taxationPeriod;
    List<Depreciation>? depreciation;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    ConstructionType({
        this.tax,
        this.id,
        this.type,
        this.constructionRatePerSqMeter,
        this.taxationPeriod,
        this.depreciation,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory ConstructionType.fromJson(Map<String, dynamic> json) => ConstructionType(
        tax: json["tax"] == null ? null : Tax.fromJson(json["tax"]),
        id: json["_id"],
        type: json["type"],
        constructionRatePerSqMeter: json["constructionRatePerSqMeter"],
        taxationPeriod: json["taxationPeriod"] == null ? null : TaxationPeriod.fromJson(json["taxationPeriod"]),
        depreciation: json["depreciation"] == null ? [] : List<Depreciation>.from(json["depreciation"]!.map((x) => Depreciation.fromJson(x))),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "tax": tax?.toJson(),
        "_id": id,
        "type": type,
        "constructionRatePerSqMeter": constructionRatePerSqMeter,
        "taxationPeriod": taxationPeriod?.toJson(),
        "depreciation": depreciation == null ? [] : List<dynamic>.from(depreciation!.map((x) => x.toJson())),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class Depreciation {
    int? yearsFrom;
    int? yearsTo;
    double? value;
    String? id;

    Depreciation({
        this.yearsFrom,
        this.yearsTo,
        this.value,
        this.id,
    });

    factory Depreciation.fromJson(Map<String, dynamic> json) => Depreciation(
        yearsFrom: json["yearsFrom"],
        yearsTo: json["yearsTo"],
        value: json["value"]?.toDouble(),
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "yearsFrom": yearsFrom,
        "yearsTo": yearsTo,
        "value": value,
        "_id": id,
    };
}

class Tax {
    double? min;
    double? max;

    Tax({
        this.min,
        this.max,
    });

    factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        min: json["min"]?.toDouble(),
        max: json["max"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "min": min,
        "max": max,
    };
}

class TaxationPeriod {
    String? id;
    int? from;
    int? to;
    String? displayName;
    List<SplitYear>? splitYears;
    String? taxType;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;

    TaxationPeriod({
        this.id,
        this.from,
        this.to,
        this.displayName,
        this.splitYears,
        this.taxType,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    factory TaxationPeriod.fromJson(Map<String, dynamic> json) => TaxationPeriod(
        id: json["_id"],
        from: json["from"],
        to: json["to"],
        displayName: json["displayName"],
        splitYears: json["splitYears"] == null ? [] : List<SplitYear>.from(json["splitYears"]!.map((x) => SplitYear.fromJson(x))),
        taxType: json["taxType"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "from": from,
        "to": to,
        "displayName": displayName,
        "splitYears": splitYears == null ? [] : List<dynamic>.from(splitYears!.map((x) => x.toJson())),
        "taxType": taxType,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
    };
}

class SplitYear {
    int? from;
    int? to;
    String? displayName;
    String? id;

    SplitYear({
        this.from,
        this.to,
        this.displayName,
        this.id,
    });

    factory SplitYear.fromJson(Map<String, dynamic> json) => SplitYear(
        from: json["from"],
        to: json["to"],
        displayName: json["displayName"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "from": from,
        "to": to,
        "displayName": displayName,
        "_id": id,
    };
}

class OwnerData {
    String? firstName;
    String? middleName;
    String? lastName;

    OwnerData({
        this.firstName,
        this.middleName,
        this.lastName,
    });

    factory OwnerData.fromJson(Map<String, dynamic> json) => OwnerData(
        firstName: json["firstName"],
        middleName: json["middleName"],
        lastName: json["lastName"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "middleName": middleName,
        "lastName": lastName,
    };
}

class Owner {
    String? firstName;
    String? lastName;
    String? middleName;
    bool? primaryUser;
    bool? isActive;
    bool? tenant;
    String? id;
    bool? active;

    Owner({
        this.firstName,
        this.lastName,
        this.middleName,
        this.primaryUser,
        this.isActive,
        this.tenant,
        this.id,
        this.active,
    });

    factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        firstName: json["firstName"],
        lastName: json["lastName"],
        middleName: json["middleName"],
        primaryUser: json["primaryUser"],
        isActive: json["isActive"],
        tenant: json["tenant"],
        id: json["_id"],
        active: json["active"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "middleName": middleName,
        "primaryUser": primaryUser,
        "isActive": isActive,
        "tenant": tenant,
        "_id": id,
        "active": active,
    };
}

class PropertyDetails {
    String? waterConnectionType;
    int? id;
    int? propertyId;
    Street? street;
    String? surveyNumbers;
    Ward? ward;
    Religion? villageName;

    PropertyDetails({
        this.waterConnectionType,
        this.id,
        this.propertyId,
        this.street,
        this.surveyNumbers,
        this.ward,
        this.villageName,
    });

    factory PropertyDetails.fromJson(Map<String, dynamic> json) => PropertyDetails(
        waterConnectionType: json["waterConnectionType"],
        id: json["id"],
        propertyId: json["propertyId"],
        street: json["street"] == null ? null : Street.fromJson(json["street"]),
        surveyNumbers: json["SurveyNumbers"],
        ward: json["ward"] == null ? null : Ward.fromJson(json["ward"]),
        villageName: json["villageName"] == null ? null : Religion.fromJson(json["villageName"]),
    );

    Map<String, dynamic> toJson() => {
        "waterConnectionType": waterConnectionType,
        "id": id,
        "propertyId": propertyId,
        "street": street?.toJson(),
        "SurveyNumbers": surveyNumbers,
        "ward": ward?.toJson(),
        "villageName": villageName?.toJson(),
    };
}

class TotalTaxValues {
    double? totalHouseTaxSum;
    double? totalHealthTaxSum;
    double? totalLightTaxSum;
    int? totalWaterTaxSum;

    TotalTaxValues({
        this.totalHouseTaxSum,
        this.totalHealthTaxSum,
        this.totalLightTaxSum,
        this.totalWaterTaxSum,
    });

    factory TotalTaxValues.fromJson(Map<String, dynamic> json) => TotalTaxValues(
        totalHouseTaxSum: json["totalHouseTaxSum"]?.toDouble(),
        totalHealthTaxSum: json["totalHealthTaxSum"]?.toDouble(),
        totalLightTaxSum: json["totalLightTaxSum"]?.toDouble(),
        totalWaterTaxSum: json["totalWaterTaxSum"],
    );

    Map<String, dynamic> toJson() => {
        "totalHouseTaxSum": totalHouseTaxSum,
        "totalHealthTaxSum": totalHealthTaxSum,
        "totalLightTaxSum": totalLightTaxSum,
        "totalWaterTaxSum": totalWaterTaxSum,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
