import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';

class FaqsComponent extends StatelessWidget {
  const FaqsComponent({
    super.key,
    required this.question,
    required this.answer

  });

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question, style: TextStyle(
          color: ColorsConstant.lightGreen,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500
        ),),
        SizedBox(height: 12.h,),
        Text(answer, style: TextStyle(
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
