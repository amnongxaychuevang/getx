import 'package:app/model/AddressModel.dart';
import 'package:app/model/CompanyModel.dart';

class UserModel {
  String name;
  String email;
  AddressModel? addressModel;
  CompanyModel? companyModel;
  UserModel({
    required this.name,
    required this.email,
    this.addressModel,
    this.companyModel,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      addressModel: AddressModel.fromJson(json['address']),
      companyModel: CompanyModel.fromJson(json['company']),
    );
  }
}
