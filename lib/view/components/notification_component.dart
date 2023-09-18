import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors.dart';

class NotificationComponent extends StatelessWidget {
  const NotificationComponent({
    super.key,
    required this.name,
    required this.description
  });

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 35.h),
      child: InkWell(
        onTap: (){

        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsConstant.lightGreen, width: 2.w)
              ),
              child: Image.asset('assets/images/dashboard-avatar.png'),
            ),
            SizedBox(width: 18.w,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(
                    color: ColorsConstant.white,
                    fontSize: 12.sp
                ),),
                Text(description, style: TextStyle(
                    color: ColorsConstant.white,
                    fontSize: 10.sp
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
