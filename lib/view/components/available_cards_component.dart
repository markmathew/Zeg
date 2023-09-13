import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/white_btn_component.dart';

class AvailableCardsComponent extends StatelessWidget {
  AvailableCardsComponent({super.key});

  final List<String> imageUrls = [
    'assets/images/logos-mastercard.png',
    'assets/images/logos-visa.png',
    'assets/images/logos-paypal.png',
  ];

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.of(context).size.height*0.45,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index){
            return Container(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  height: 82.h,
                  width: 370.w,
                  decoration: BoxDecoration(
                    color: ColorsConstant.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.r)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Row(
                    children: [
                      Image.asset(imageUrls[index], height: 36.h, width: 46.w,),
                      SizedBox(width: 16.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('James Cunn', style: TextStyle(
                              color: ColorsConstant.white,
                              fontSize: 16.sp,
                            fontWeight: FontWeight.w500
                          ),),
                          Text('2222-9654-8530-2256', style: TextStyle(
                            color: ColorsConstant.white,
                            fontSize: 10.sp
                          ),),
                        ],
                      )
                    ],
                  ),)
                );
          }),
    );
  }
}
