import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors.dart';

class LoanCardComponent extends StatelessWidget {
  const LoanCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 297.h,
      left: 30.w,
      right: 30.w,
      child: Container(
        padding: EdgeInsets.only(top: 27.h),
        height: 337.h,
        width: 370.w,
        decoration: BoxDecoration(
            color: ColorsConstant.white,
            borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
            color: ColorsConstant.grey,
            offset: Offset(0, 3),
            blurRadius: 18.0,
            spreadRadius: 0.0
          )],
          border: Border.all(color: ColorsConstant.lightGreen, width: 2)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage: const AssetImage('assets/images/dashboard-avatar.png'),
                  ),
                  Padding(padding: EdgeInsets.only(left: 22.w)),
                  Text('Name', style: TextStyle(
                      color: ColorsConstant.black,
                      fontSize: 16.sp,
                    fontWeight: FontWeight.w600
                  ),),
                  Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: Text('Contact', style: TextStyle(
                          fontSize: 10.sp,
                          color: ColorsConstant.black
                      ),),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1.h,
              color: ColorsConstant.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Amount', style: TextStyle(
                    fontSize: 12.sp,
                    color: ColorsConstant.black
                  ),),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 31.0),
                    child: Text('Amount',style: TextStyle(
                        fontSize: 16.sp,fontWeight: FontWeight.w600,
                        color: ColorsConstant.black
                    ),),
                  )
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Interest %', style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorsConstant.black
                  ),),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 31.0),
                    child: Text('Interest %',style: TextStyle(
                        fontSize: 16.sp,fontWeight: FontWeight.w600,
                        color: ColorsConstant.black
                    ),),
                  )
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Repayment Date', style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorsConstant.black
                  ),),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 31.0),
                    child: Text('Repayment Date',style: TextStyle(
                        fontSize: 16.sp,fontWeight: FontWeight.w600,
                        color: ColorsConstant.black
                    ),),
                  )
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Optional Fees', style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorsConstant.black
                  ),),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 31.0),
                    child: Text('Optional Fees',style: TextStyle(
                        fontSize: 16.sp,fontWeight: FontWeight.w600,
                        color: ColorsConstant.black
                    ),),
                  )
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total', style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorsConstant.black
                  ),),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 31.0),
                    child: Text('Total',style: TextStyle(
                        fontSize: 16.sp,fontWeight: FontWeight.w600,
                        color: ColorsConstant.black
                    ),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
