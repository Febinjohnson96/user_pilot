import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:user_pilot/presentation/home/home_controller.dart';
import 'package:user_pilot/presentation/home/widgets/home_card_widget.dart';
import 'package:user_pilot/widgets/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return AppScaffold(
            child: Obx(
              () => controller.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.amber,
                      ),
                    )
                  : SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hola,\nJohn Doe',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 600.h,
                              width: 500.w,
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return HomeCardWidget(
                                          firstName: controller
                                              .users[index].firstName
                                              .toString(),
                                          lastName: controller
                                              .users[index].lastName
                                              .toString(),
                                          company: controller
                                                  .users[index].company?.name ??
                                              '',
                                          imageUrl: controller
                                                  .users[index].imageUrl ??
                                              '')
                                      .animate()
                                      .fadeIn()
                                      .move(delay: 00.ms, duration: 300.ms)
                                      .scale();
                                },
                                itemCount: controller.users.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  height: 10,
                                ),
                              ),
                            ),
                          ]),
                    ),
            ),
          );
        });
  }
}
