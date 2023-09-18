import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/icon_options_component.dart';
import 'package:zeg/view/components/sw_btn_component.dart';

import '../components/notification_bar_component.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const DrawerComponent(),
      appBar:const AppBarComponent(pageTitle: '',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      ColorsConstant.lightGreen.withOpacity(0.7),
                      ColorsConstant.neonGreen,

                    ],
                    stops: const [
                      0.02,
                      0.7
                    ])
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 32.0.w),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/dashboard-avatar.png',),
                      radius: 30,
                    ),

                    SizedBox(width: 16.w,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('James Cunn', style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700

                        ),),
                        Text('jamescunn@gmail.com', style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 12.sp
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              width: MediaQuery.of(context).size.width*1,
              color: ColorsConstant.black,
              child: Padding(
                padding: EdgeInsets.only(left: 22.w,right: 22.w,top: 18.h),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Settings', style: TextStyle(
                      color: ColorsConstant.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp
                    ),),
                    SizedBox(height: 20.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Push-Up Notifications', style: TextStyle(
                          color: ColorsConstant.white,
                          fontSize: 14.sp
                        ),),
                        const Spacer(),
                        SwitchButtonComponent()
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const Divider(
                      height: 1.5,
                      color: ColorsConstant.grey,
                    ),
                    SizedBox(height: 20.h,),

                    InkWell(
                      onTap: (){
                        Get.toNamed('/safetyTipsScreen');
                      },
                      child: Row(
                        children: [
                          Text('Safety Tips', style: TextStyle(
                              color: ColorsConstant.white,
                              fontSize: 14.sp
                          ),),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios, color: ColorsConstant.white,size: 22,),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    const Divider(
                      height: 1.5,
                      color: ColorsConstant.grey,
                    ),


                    Container(
                      margin: EdgeInsets.symmetric(vertical: 32.h),
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                ColorsConstant.lightGreen.withOpacity(0.7),
                                ColorsConstant.neonGreen,
                              ],
                              stops: const [
                                0.02,
                                0.7
                              ])
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){Get.toNamed('/profileManagementScreen');},
                            child: const IconOptionsComponent(
                              myIcon: Icon(Icons.person), optionText: 'Profile Management',
                            ),
                          ),
                          SizedBox(height: 28.h,),
                          InkWell(
                            onTap: (){Get.toNamed('/paymentMethod');},
                            child: const IconOptionsComponent(
                              myIcon: Icon(Icons.wallet_sharp), optionText: 'Payment Method',
                            ),
                          ),
                          SizedBox(height: 28.h,),
                          InkWell(
                            onTap: (){
                              Get.toNamed('/beLenderScreen');
                            },
                            child: const IconOptionsComponent(
                              myIcon: Icon(Icons.money), optionText: 'Be a Lender',
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
