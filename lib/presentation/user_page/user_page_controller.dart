import 'package:get/get.dart';
import 'package:user_pilot/domain/model/user_model.dart';

class UserpageController extends GetxController {
  late UserModel user;

  @override
  void onInit() {
    user = Get.arguments;
    super.onInit();
  }

}
