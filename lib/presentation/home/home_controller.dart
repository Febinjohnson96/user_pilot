import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:user_pilot/domain/model/user_model.dart';
import 'package:user_pilot/domain/params/user_request_param.dart';
import 'package:user_pilot/domain/repository/user_repository.dart';

class HomeController extends GetxController {
  final _apiHelper = GetIt.I.get<UserRepository>();

  final _users = (List<UserModel>.empty()).obs;
  List<UserModel> get users => _users;

  final _isloading = false.obs;
  bool get isLoading => _isloading.value;

  @override
  void onInit() {
    fetchUsersInit();
    super.onInit();
  }

  void fetchUsersInit() async {
    _isloading(true);
    await fetchUsers().then((value) => _users(value));
    _isloading(false);
  }

  Future<List<UserModel>> fetchUsers() async {
    const params = UserRequestParam(limit: '50', skip: '0');
    final response = await _apiHelper.getUserList(params);
    return response;
  }

  void onTapCard(UserModel user) {
    Get.toNamed('/user_page', arguments: user);
  }
}
