import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/payment_component.dart';
import 'package:zeg/view/components/top_blackcontainer_component.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBlackComponent(text: 'ADD CARD',),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 22.w,
                  vertical: 38.h
              ),
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                  stops: const [
                    0.1,
                    0.9
                  ],

                  colors: [
                    ColorsConstant.neonGreen.withOpacity(0.9),
                    ColorsConstant.lightGreen.withOpacity(0.6)
                  ],

                ),
                borderRadius: BorderRadius.circular(15.r)
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 22.w),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Card Number', style: TextStyle(
                      color: ColorsConstant.grey,
                      fontSize: 10.sp
                    ),),

                    Text('0000 0000 0000 0000', style: TextStyle(
                      fontSize: 28.sp,
                      color: ColorsConstant.black,
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 16.h,),
                    Text('Valid thru', style: TextStyle(
                        color: ColorsConstant.grey,
                        fontSize: 10.sp
                    ),),
                    Text('2/23', style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorsConstant.black,
                      fontWeight: FontWeight.w500
                    ),),
                  ],
                ),
              ),
            ),
            PaymentCardComponent(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
