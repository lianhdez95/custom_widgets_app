// To parse this JSON data, do
//
//     final merchantTpvModel = merchantTpvModelFromJson(jsonString);

import 'dart:convert';

MerchantTpvModel merchantTpvModelFromJson(String str) => MerchantTpvModel.fromJson(json.decode(str));

String merchantTpvModelToJson(MerchantTpvModel data) => json.encode(data.toJson());

class MerchantTpvModelList {
    List<MerchantTpvModel> merchant;

    MerchantTpvModelList({
        required this.merchant,
    });

    factory MerchantTpvModelList.fromJson(Map<String, dynamic> json) => MerchantTpvModelList(
        merchant: List<MerchantTpvModel>.from(json["merchant"].map((x) => MerchantTpvModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "merchant": List<dynamic>.from(merchant.map((x) => x.toJson())),
    };
}

class MerchantTpvModel {
    String uuid;
    String avatar;
    String name;
    String alias;
    String receiveCode;
    String role;
    bool approved;
    bool scope;
    DateTime createdAt;
    DateTime updatedAt;
    String currency;
    bool cash;

    MerchantTpvModel({
        required this.uuid,
        required this.avatar,
        required this.name,
        required this.alias,
        required this.receiveCode,
        required this.role,
        required this.approved,
        required this.scope,
        required this.createdAt,
        required this.updatedAt,
        required this.currency,
        required this.cash,
    });

    factory MerchantTpvModel.fromJson(Map<String, dynamic> json) => MerchantTpvModel(
        uuid: json["uuid"],
        avatar: json["avatar"],
        name: json["name"],
        alias: json["alias"],
        receiveCode: json["receive_code"],
        role: json["role"],
        approved: json["approved"],
        scope: json["scope"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        currency: json["currency"],
        cash: json["cash"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "avatar": avatar,
        "name": name,
        "alias": alias,
        "receive_code": receiveCode,
        "role": role,
        "approved": approved,
        "scope": scope,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "currency": currency,
        "cash": cash,
    };
}
