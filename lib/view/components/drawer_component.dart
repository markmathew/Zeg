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
          const UserAccountsDrawerHeader(
            accountName: Text('James Cunn', style: TextStyle(color: ColorsConstant.black),),
            accountEmail: Text('jamescunn@gmail.com',style: TextStyle(color: ColorsConstant.black)
            ),
          currentAccountPicture: Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(backgroundImage: AssetImage('assets/vectors/zeglogo.png'),radius: 75,)),

            decoration: BoxDecoration(
              color: ColorsConstant.white
            ),
        ),
          Divider(
            height: 0,
            thickness: 0.5,
            indent: 15.w,
            endIndent: 15.w,
            color: ColorsConstant.grey,
          ),

          SizedBox(height: 18.h,),

          Container(
            margin: EdgeInsets.only(left: 15.w),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.toNamed('/loanHistoryScreen');
                  },
                  child: Row(
                      children: [
                        const Icon(Icons.history, color: ColorsConstant.grey,),
                        SizedBox(width: 8.w,),
                        Text('Loan history', style: TextStyle(
                            fontSize: 16.sp,
                            color: ColorsConstant.grey,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                ),
                SizedBox(height: 18.h,),
                InkWell(
                  onTap: (){
                    Get.toNamed('/faqsScreen');
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.question_answer_outlined, color: ColorsConstant.grey,),
                      SizedBox(width: 8.w,),
                      Text('FAQs', style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsConstant.grey,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 18.h,),
                InkWell(
                  onTap: (){
                    Get.toNamed('/contactUs');
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.quick_contacts_mail_outlined, color: ColorsConstant.grey,),
                      SizedBox(width: 8.w,),
                      Text('Contact us', style: TextStyle(
                          fontSize: 16.sp,
                          color: ColorsConstant.grey,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                    const Icon(Icons.grading_rounded, color: ColorsConstant.grey,),
                    SizedBox(width: 8.w,),
                    Text('Terms & Conditions', style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorsConstant.grey,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                    const Icon(Icons.file_copy_outlined, color: ColorsConstant.grey,),
                    SizedBox(width: 8.w,),
                    Text('Privacy Policy', style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorsConstant.grey,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                SizedBox(height: 18.h,),
                Row(
                  children: [
                    const Icon(Icons.request_page_outlined, color: ColorsConstant.grey,),
                    SizedBox(width: 8.w,),
                    Text('Loan history', style: TextStyle(
                        fontSize: 16.sp,
                        color: ColorsConstant.grey,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),

              ],
            ),
          ),

      ]),

    );
  }
}
