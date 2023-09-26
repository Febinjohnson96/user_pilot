import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_pilot/gen/assets.gen.dart';
import 'package:user_pilot/widgets/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(children: [
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
    );
  }
}
