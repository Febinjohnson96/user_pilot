import 'package:user_pilot/domain/model/user_model.dart';
import 'package:user_pilot/domain/params/user_request_param.dart';

abstract class UserRepository {
  Future<UserModel> getUserList(UserRequestParam param);
  Future<UserModel> getSingleUser();
}
