import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';

class NotificationBarComponent extends StatelessWidget {
  const NotificationBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed('/notificationScreen');
      },
      child: Container(
        margin: const EdgeInsets.all(0.5),
        height: 31.h,
        width: 38.w,
        decoration: BoxDecoration(
          color: ColorsConstant.grey.withOpacity(0.6),
          borderRadius: BorderRadius.circular(15)
        ),
        child: const Center(
          child: Icon(Icons.notifications_none, color: ColorsConstant.white,),
        ),
      ),
    );
  }
}
