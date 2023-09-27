import 'package:user_pilot/domain/model/address_model.dart';
import 'package:user_pilot/domain/model/company_model.dart';

class UserModel {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? imageUrl;
  Address? address;
  Company? company;

  UserModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.maidenName,
      this.age,
      this.gender,
      this.email,
      this.phone,
      this.imageUrl,
      this.address,
      this.company});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      maidenName: json['maidenName'],
      age: json['age'],
      email: json['email'],
      phone: json['phone'],
      imageUrl: json['image'],
      address:
          json['address'] != null ? Address.fromJson(json['address']) : null,
      company:
          json['company'] != null ? Company.fromJson(json['company']) : null,
    );
  }
}
