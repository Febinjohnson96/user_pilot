import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:user_pilot/gen/assets.gen.dart';
import 'package:user_pilot/presentation/home/home_controller.dart';
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
              ()=> 
               Column(children: [
                controller.isLoading? const Center(child: CircularProgressIndicator(color: Colors.amber,),):
                Stack(
                  children: [
                    SizedBox(
                      height: 200.h,
                      width: 600.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          Assets.images.home.homeHeader.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          );
        });
  }
}
