import 'package:flutter/material.dart';
import 'package:user_pilot/domain/model/user_model.dart';
import 'package:user_pilot/domain/params/user_request_param.dart';
import 'package:user_pilot/domain/repository/user_repository.dart';
import 'package:user_pilot/managers/api_helper.dart';

class UserRepositoryImpl implements UserRepository {
  final ApiHelper _apiHelper;
  const UserRepositoryImpl(this._apiHelper);

  @override
  Future<List<UserModel>> getUserList(UserRequestParam param) async {
    final response =
        await _apiHelper.get(endpoint: '/user', params: param.toMap());
    debugPrint(response['users'].toString());
    List<UserModel> usr = List<UserModel>.from(
        response['users'].map((e) => UserModel.fromJson(e))).toList();
    return usr;
  }

  @override
  Future<UserModel> getSingleUser() async {
    return UserModel();
  }
}
