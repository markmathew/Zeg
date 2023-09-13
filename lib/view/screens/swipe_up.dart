import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/swipeup_component.dart';

class SwipeUp extends StatelessWidget {
  const SwipeUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,

      body: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 141.h),
                  height: MediaQuery.of(context).size.height*0.3,
                  //color: ColorsConstant.white,
                  child: Center(
                    child: Image.asset('assets/vectors/zeglogo.png')
                  ),
                ),

                 Text('YOUR LENDING AND \n BORROWING ALLY', style: TextStyle(
                  color: ColorsConstant.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,),

                const SwipeUpComponent(),

                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 18.0.h, right: 12.0.w),
                      child: InkWell(
                        onTap: (){
                          Get.toNamed('/signUp');
                        },
                        child: const Text('SIGN UP', style: TextStyle(
                          color: ColorsConstant.white,
                          decoration: TextDecoration.underline
                        ),),
                      ),
                    ),
                  ),
                )

                ]
              )

    );
  }
}
