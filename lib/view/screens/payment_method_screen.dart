import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/white_btn_component.dart';

import '../components/available_cards_component.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      extendBodyBehindAppBar: true,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: 'Payment Method',),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.15,
              ),
              Text('Available Cards', style: TextStyle(
                color: ColorsConstant.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 12.h,),

              AvailableCardsComponent(),
              SizedBox(height: MediaQuery.of(context).size.height*0.15,),
              Align(
                alignment: Alignment.bottomCenter,
                  child: WhiteBtnComponent(
                    btnRadius: 12.r,
                    btnTitle: 'ADD NEW', onPressed: (){
                    Get.toNamed('/addCardScreen');
                  },)
                  )
            ],
          ),
        ),
      ),

      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
