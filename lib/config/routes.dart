import 'package:get/get.dart';
import 'package:user_pilot/presentation/home/home_screen.dart';
import 'package:user_pilot/presentation/user_page/user_page_screen.dart';

List<GetPage> approutes = [
  GetPage(name: '/', page: () => const HomeScreen()),
  GetPage(name: '/user_page', page: () => const UserPageScreen())
];
