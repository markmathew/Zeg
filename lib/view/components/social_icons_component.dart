import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors.dart';

class SocialIconsComponent extends StatelessWidget {
  const SocialIconsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: ColorsConstant.grey),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(
            child: Image.asset('assets/vectors/appleIcon.png'),
          ),
        ),
        SizedBox(
          width: 22.w,
        ),
        Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: ColorsConstant.grey),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(
            child: Image.asset('assets/vectors/facebookIcon.png'),
          ),
        ),
        SizedBox(
          width: 22.w,
        ),
        Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: ColorsConstant.grey),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(
            child: Image.asset('assets/vectors/googleIcon.png'),
          ),
        )
      ],
    );
  }
}
