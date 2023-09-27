import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.company,
      required this.imageUrl});
  final String firstName;
  final String lastName;
  final String company;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade400),
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            height: 150.h,
            width: 150.w,
            fit: BoxFit.cover,
          ),
          Flexible(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstName.toString(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                lastName.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                company.toString(),
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ))
        ],
      ),
    );
  }
}
