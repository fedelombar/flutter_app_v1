// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.userId,
    required this.email,
    required this.isManager,
    required this.isDtcUser,
    required this.isActive,
    required this.isLocked,
    required this.signupStatus,
    required this.signupDate,
    required this.firstName,
    required this.lastName,
    required this.secondLastName,
    required this.phonePrefix,
    required this.phoneNumber,
    required this.profilePicture,
    required this.hasSavingService,
    required this.hasUsedPaymentServices,
    required this.isPreRegister,
    required this.mexicoData,
  });

  int userId;
  String email;
  bool isManager;
  bool isDtcUser;
  bool isActive;
  bool isLocked;
  String signupStatus;
  DateTime signupDate;
  String firstName;
  String lastName;
  dynamic secondLastName;
  String phonePrefix;
  String phoneNumber;
  dynamic profilePicture;
  bool hasSavingService;
  bool hasUsedPaymentServices;
  bool isPreRegister;
  MexicoData mexicoData;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        email: json["email"],
        isManager: json["is_manager"],
        isDtcUser: json["is_dtc_user"],
        isActive: json["is_active"],
        isLocked: json["is_locked"],
        signupStatus: json["signup_status"],
        signupDate: DateTime.parse(json["signup_date"]),
        firstName: json["first_name"],
        lastName: json["last_name"],
        secondLastName: json["second_last_name"],
        phonePrefix: json["phone_prefix"],
        phoneNumber: json["phone_number"],
        profilePicture: json["profile_picture"],
        hasSavingService: json["has_saving_service"],
        hasUsedPaymentServices: json["has_used_payment_services"],
        isPreRegister: json["is_pre_register"],
        mexicoData: MexicoData.fromJson(json["mexico_data"]),
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "email": email,
        "is_manager": isManager,
        "is_dtc_user": isDtcUser,
        "is_active": isActive,
        "is_locked": isLocked,
        "signup_status": signupStatus,
        "signup_date": signupDate.toIso8601String(),
        "first_name": firstName,
        "last_name": lastName,
        "second_last_name": secondLastName,
        "phone_prefix": phonePrefix,
        "phone_number": phoneNumber,
        "profile_picture": profilePicture,
        "has_saving_service": hasSavingService,
        "has_used_payment_services": hasUsedPaymentServices,
        "is_pre_register": isPreRegister,
        "mexico_data": mexicoData.toJson(),
      };
}

class MexicoData {
  MexicoData({
    required this.rfc,
    required this.clabe,
    required this.bank,
    required this.balance,
    required this.percentage,
  });

  String rfc;
  String clabe;
  String bank;
  double balance;
  int percentage;

  factory MexicoData.fromJson(Map<String, dynamic> json) => MexicoData(
        rfc: json["rfc"],
        clabe: json["clabe"],
        bank: json["bank"],
        balance: json["balance"],
        percentage: json["percentage"],
      );

  Map<String, dynamic> toJson() => {
        "rfc": rfc,
        "clabe": clabe,
        "bank": bank,
        "balance": balance,
        "percentage": percentage,
      };
}
