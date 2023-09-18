import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsConstant.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.symmetric(horizontal: 25.w),
            accountName: const Text('James Cunn', style: TextStyle(color: ColorsConstant.black),),
            accountEmail: const Text('jamescunn@gmail.com',style: TextStyle(color: ColorsConstant.black)
            ),
          currentAccountPicture: const Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(backgroundImage: AssetImage('assets/vectors/zeglogo.png'),radius: 75,)),

            decoration: const BoxDecoration(
              color: ColorsConstant.white
            ),
        ),
          Divider(
            height: 0,
            thickness: 0.5,
            indent: 28.w,
            endIndent: 27.w,
            color: ColorsConstant.grey,
          ),

          SizedBox(height: 41.h,),

          Container(
            margin: EdgeInsets.only(left: 28.w),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.toNamed('/loanHistoryScreen');
                  },
                  child: Row(
                      children: [
                        const Icon(Icons.history, color: ColorsConstant.grey,),
                        SizedBox(width: 23.w,),
                        Text('Loan history', style: TextStyle(
                            fontSize: 16.sp,
                            color: ColorsConstant.grey,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                ),
                SizedBox(height: 28.h,),
                InkWell(
                  onTap: (){
                    Get.toNamed('/faqsScreen');
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/vectors/faqs-icon.png'),
                      SizedBox(width: 23.w,),
                      Text('FAQs', style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsConstant.grey,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 28.h,),
                InkWell(
                  onTap: (){
                    Get.toNamed('/contactUs');
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/vectors/contact-us-icon.png'),
                      SizedBox(width: 23.w,),
                      Text('Contact us', style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsConstant.grey,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 28.h,),
                InkWell(
                  onTap: (){
                    Get.toNamed('/termsConditionScreen');
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.file_copy_outlined, color: ColorsConstant.grey,),
                      SizedBox(width: 23.w,),
                      Text('Terms & Conditions', style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsConstant.grey,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 28.h,),
                InkWell(
                  onTap: (){
                    Get.toNamed('/privacyPolicyScreen');
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/vectors/privacy-policy-icon.png'),
                      SizedBox(width: 23.w,),
                      Text('Privacy Policy', style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsConstant.grey,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 28.h,),
                InkWell(
                  onTap: (){
                    Get.toNamed('/loanRequestScreen');
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/vectors/loan-history-icon.png'),
                      SizedBox(width: 23.w,),
                      Text('Loan history', style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsConstant.grey,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),

              ],
            ),
          ),

      ]),

    );
  }
}
