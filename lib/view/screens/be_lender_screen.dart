import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/editfield_component.dart';
import 'package:zeg/view/components/popup_component.dart';
import 'package:zeg/view/components/textfield_component.dart';
import 'package:zeg/view/components/white_btn_component.dart';

class BeLenderScreen extends StatelessWidget {
  BeLenderScreen({super.key});

  final TextEditingController loanAmountController = TextEditingController();
  final TextEditingController interestRateController = TextEditingController(text: '10');
  final TextEditingController repaymentDaysController = TextEditingController();

  FocusNode loanAmountFocus = FocusNode();
  FocusNode repaymentFocus = FocusNode();

  static int interestRate = 10.obs as int;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      extendBodyBehindAppBar: true,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: ''),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.45,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorsConstant.neonGreen,
                    ColorsConstant.lightGreen
                  ],
                  stops: [
                    0.2,
                    1
                  ]
                ),
              ),
              child: Center(
                child: Text('Enter Details', style: TextStyle(
                  color: ColorsConstant.white,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w600
                ),),
              ),
            ),
            SizedBox(height: 12.h,),
            Text('Loan Amount', style: TextStyle(
              color: ColorsConstant.white,
              fontSize: 14.sp,
            ),),
            SizedBox(
              height: 48.h,
              width: 189.w,
              child: TextFormField(
                keyboardType: TextInputType.number,
                //enabled: false,
                textAlign: TextAlign.center,
                controller: loanAmountController,
                cursorColor: ColorsConstant.white,
                style: TextStyle(color: ColorsConstant.neonGreen, fontSize: 20.sp),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefix: Text('\$', style: TextStyle(
                    color: ColorsConstant.neonGreen,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600
                  ),),
                  hintText: loanAmountController.text,
                  hintStyle: const TextStyle(color: ColorsConstant.white),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorsConstant.white),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorsConstant.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h,),
            Text('Interest Rate %', style: TextStyle(
              color: ColorsConstant.white,
              fontSize: 14.sp,
            ),),
            SizedBox(
              height: 48.h,
              width: 189.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove_circle_outline,color: ColorsConstant.white,),
                    onPressed: () {
                      // Subtract logic
                      int currentValue = int.parse(interestRateController.text);
                      if (currentValue > 0) {
                        currentValue--;
                        interestRateController.text = currentValue.toString();
                      }
                    },
                  ),
                  SizedBox(
                    width: 50,
                    height: 15.h,
                    // Adjust the width to your liking
                    child: TextFormField(
                      style: TextStyle(color: ColorsConstant.neonGreen, fontSize: 20.sp),
                      controller: interestRateController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline, color: ColorsConstant.white,),
                    onPressed: () {
                      // Add logic
                      int currentValue = int.parse(interestRateController.text);
                      currentValue++;
                      interestRateController.text = currentValue.toString();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 189.w,
              child: const Divider(
                color: ColorsConstant.white,
                thickness: 1,
                height: 20,
              ),
            ),
            SizedBox(height: 12.h,),
            Text('Repayment Days', style: TextStyle(
              color: ColorsConstant.white,
              fontSize: 14.sp,
            ),),
            SizedBox(
              height: 48.h,
              width: 189.w,
              child: TextFormField(
                keyboardType: TextInputType.number,
                //enabled: false,
                textAlign: TextAlign.center,
                controller: repaymentDaysController,
                cursorColor: ColorsConstant.white,
                style: TextStyle(color: ColorsConstant.neonGreen, fontSize: 20.sp),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: repaymentDaysController.text,
                  hintStyle: const TextStyle(color: ColorsConstant.white),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorsConstant.white),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorsConstant.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 38.h,),
            //const WhiteBtnComponent(btnTitle: 'SAVE')
            WhiteBtnComponent(btnTitle: 'SAVE', onPressed: (){
              PopUpComponent.showPopUp(context, 'CONGRATS\nYou are lender too now');
              Future.delayed(Duration(seconds: 3), (){
                Get.offNamed('/accountScreen');
              });
            })
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
