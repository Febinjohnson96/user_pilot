import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:user_pilot/presentation/user_page/user_page_controller.dart';
import 'package:user_pilot/widgets/app_scaffold.dart';

class UserPageScreen extends StatelessWidget {
  const UserPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: GetBuilder<UserpageController>(
          init: UserpageController(),
          builder: (controller) {
            return Column(
              children: [
                Stack(children: [
                  Container(
                    height: 200.h,
                    width: 400.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF4ecdc4),
                    ),
                  ),
                  Hero(
                      tag: controller.user,
                      child: Image.network(
                        controller.user.imageUrl ?? '',
                        height: 200.h,
                        width: 400.h,
                        fit: BoxFit.contain,
                      )),
                  Positioned(
                      bottom: 0,
                      left: 20,
                      child: Text(
                        '${controller.user.firstName}\n ${controller.user.lastName}',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ))
                ]),
                SizedBox(
                  height: 10.h,
                ),
                Text('Works at : ${controller.user.company?.name}'),
                SizedBox(
                  height: 10.h,
                ),
                Text('Department : ${controller.user.company?.department}'),
              ],
            );
          }),
    );
  }
}
