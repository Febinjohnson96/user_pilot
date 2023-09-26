import 'package:user_pilot/domain/model/address_model.dart';

class Company {
  Address? address;
  String? department;
  String? name;
  String? title;

  Company({this.address, this.department, this.name, this.title});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        address: Address.fromJson(json['address']),
        department: json['department'],
        name: json['name'],
        title: json['title']);
  }
}
