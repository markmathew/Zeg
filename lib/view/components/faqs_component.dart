import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';

class FaqsComponent extends StatelessWidget {
  const FaqsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Question 1', style: TextStyle(
          color: ColorsConstant.lightGreen,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500
        ),),
        SizedBox(height: 12.h,),
        Text('Answer', style: TextStyle(
          color: ColorsConstant.white,
          fontSize: 14.sp
        ),),
        Divider(
          thickness: 1.h,
          color: ColorsConstant.white,
        )
      ],
    );
  }
}
