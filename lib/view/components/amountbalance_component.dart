import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors.dart';

class AmountBalanceComponent extends StatelessWidget {
  const AmountBalanceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('\$',style: TextStyle(
            color: ColorsConstant.white,
            fontSize: 30.sp
        ),),
        SizedBox(width: 12.w,),
        Text('8656.80', style: TextStyle(
          color: ColorsConstant.white,
          fontSize: 48.sp,
        ),)
      ],
    );
  }
}
