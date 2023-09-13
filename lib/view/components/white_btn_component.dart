import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../common/colors.dart';

class WhiteBtnComponent extends StatelessWidget {
  const WhiteBtnComponent({
    super.key,
    required this.btnTitle,
    required this.onPressed,
    this.isDisable = false
  });

  final String btnTitle;
  final VoidCallback onPressed;
  final bool isDisable;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisable ? null: onPressed,
      child: Container(
        height: 55.h,
        width: 370.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            color: ColorsConstant.white
        ),
        child: Center(
          child: Text(btnTitle, style: TextStyle(
              color: ColorsConstant.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w700
          ),),
        ),
      ),
    );
  }
}
