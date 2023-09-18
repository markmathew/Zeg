import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';

class LoanHistoryCardComponent extends StatelessWidget {
  const LoanHistoryCardComponent({
    super.key,
    required this.name,
    required this.contact,
    required this.total,
    required this.amount,
    required this.interestRate,
    required this.date,
    required this.optionalFees
  });

  final String name;
  final String contact;
  final String total;
  final String amount;
  final String interestRate;
  final String date;
  final String optionalFees;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      height: 253.h,
      width: 370.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [
            0.2,
            0.9
          ],
          colors: [
            ColorsConstant.neonGreen.withOpacity(0.8),
            ColorsConstant.lightGreen.withOpacity(0.6)
          ]
        ),
        borderRadius: BorderRadius.circular(10.r)
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 18.h),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: ColorsConstant.lightGreen, width: 2.w)
                    ),
                    child: CircleAvatar(
                      radius: 35.r,
                      backgroundImage: const AssetImage('assets/images/dashboard-avatar.png'),
                    ),
                  ),
                  SizedBox(width: 18.w,),
                  Column(
                    children: [
                      Text(name, style: TextStyle(
                        color: ColorsConstant.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700
                      ),),
                      Text(contact, style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 10.sp,
                      ),),
                    ],
                  ),
                  SizedBox(width: 151.w,),
                  Column(
                    children: [
                      Text('Total', style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700
                      ),),
                      Text(total, style: TextStyle(
                        color: ColorsConstant.white,
                        fontSize: 16.sp,
                      ),),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: ColorsConstant.white,
            ),
            SizedBox(height: 18.h,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Amount', style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700
                      ),),
                      Text(amount, style: TextStyle(
                        color: ColorsConstant.white,
                        fontSize: 16.sp,
                      ),),
                      SizedBox(height: 10.h,),
                      Text('Repayment Date', style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700
                      ),),
                      Text( date, style: TextStyle(
                        color: ColorsConstant.white,
                        fontSize: 16.sp,
                      ),),
                    ],
                  ),
                  SizedBox(width: 73.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Interest %', style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700
                      ),),
                      Text(interestRate, style: TextStyle(
                        color: ColorsConstant.white,
                        fontSize: 16.sp,
                      ),),
                      SizedBox(height: 10.h,),
                      Text('Optional Fees', style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700
                      ),),
                      Text(optionalFees, style: TextStyle(
                        color: ColorsConstant.white,
                        fontSize: 16.sp,
                      ),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
