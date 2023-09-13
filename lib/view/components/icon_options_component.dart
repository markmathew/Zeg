import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';

class IconOptionsComponent extends StatelessWidget {
   const IconOptionsComponent({
    super.key,
    required this.myIcon,
    required this.optionText,
  });

  final Icon myIcon;

  final String optionText;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12.w),
          height: 35.h,
          width: 35.w,
          decoration: BoxDecoration(
            color: ColorsConstant.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(child: Icon(myIcon.icon, color: ColorsConstant.white, size: 25,)),
        ),
        SizedBox(width: 16.w,),
        Text(optionText, style: TextStyle(
            color: ColorsConstant.white,
            fontSize: 14.sp
        ),)
      ],
    );
  }
}
