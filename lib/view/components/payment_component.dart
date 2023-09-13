import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/popup_component.dart';
import 'package:zeg/view/components/textfield_component.dart';

class PaymentCardComponent extends StatelessWidget {
  PaymentCardComponent({super.key});

  GlobalKey<FormState> final_formKey = GlobalKey<FormState>();

  final TextEditingController _holderNameController =
  TextEditingController(text: "");

  final TextEditingController _cardNumberController =
  TextEditingController(text: "");

  final TextEditingController _monthController =
  TextEditingController(text: "");
  final TextEditingController _yearController = TextEditingController(text: "");
  final TextEditingController _zipController = TextEditingController(text: "");

  final TextEditingController _securityCodeController =
      TextEditingController(text: "");


  final FocusNode _cardNumberFocus = FocusNode();
  final FocusNode _holderNameFocus = FocusNode();
  final FocusNode _monthFocus = FocusNode();
  final FocusNode _yearFocus = FocusNode();
  final FocusNode _zipFocus = FocusNode();
  final FocusNode _securityCodeFocus = FocusNode();


  @override
  Widget build(BuildContext context) {

    var cardAddedText = 'YOUR CARD ADDED\n SUCCESSFULLY';

    return SizedBox(
      height:MediaQuery.of(context).size.height*0.55,
      width: MediaQuery.of(context).size.width*1,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text('Card holder name', style: TextStyle(
                color: ColorsConstant.black,
                fontSize: 12.sp,
              ),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              width: 370.w,
              child: TextFieldComponent(
                _holderNameController,
                currentFocus: _holderNameFocus,
                nextFocus: _cardNumberFocus,
                keyboardType: TextInputType.name,
                borderColor: ColorsConstant.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
              child: Text('Card number', style: TextStyle(
                color: ColorsConstant.black,
                fontSize: 12.sp,
              ),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              width: 370.w,
              child: TextFieldComponent(
                _cardNumberController,
                currentFocus: _cardNumberFocus,
                nextFocus: _monthFocus,
                keyboardType: TextInputType.number,
                borderColor: ColorsConstant.black,
                maxLength: 16,
              ),
            ),


            Row(
              children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.w, top: 25.h),
                        child: Text('Expiration date', style: TextStyle(
                          color: ColorsConstant.black,
                          fontSize: 12.sp,
                        ),),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25.w),
                            width: 78.w,
                            child: TextFieldComponent(
                              _monthController,
                              currentFocus: _monthFocus,
                              nextFocus: _yearFocus,
                              keyboardType: TextInputType.number,
                              borderColor: ColorsConstant.black,
                            ),
                          ),
                          SizedBox(width: 8.w,),
                          SizedBox(
                            width: 78.w,
                            child: TextFieldComponent(
                              _yearController,
                              currentFocus: _yearFocus,
                              nextFocus: _securityCodeFocus,
                              keyboardType: TextInputType.number,
                              borderColor: ColorsConstant.black,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                SizedBox(width: 14.w,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, top: 25.h),
                      child: Text('Security code', style: TextStyle(
                        color: ColorsConstant.black,
                        fontSize: 12.sp,
                      ),),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 25.w),
                      width: 139.w,
                      child: TextFieldComponent(
                        _securityCodeController,
                        currentFocus: _securityCodeFocus,
                        nextFocus: _zipFocus,
                        keyboardType: TextInputType.number,
                        borderColor: ColorsConstant.black,
                      ),
                    ),

                  ],
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 25.w, top: 25.h),
              child: Text('Zip code', style: TextStyle(
                color: ColorsConstant.black,
                fontSize: 12.sp,
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.w),
              width: 107.w,
              child: TextFieldComponent(
                _zipController,
                currentFocus: _zipFocus,
                keyboardType: TextInputType.number,
                borderColor: ColorsConstant.black,
              ),
            ),
            SizedBox(height: 20.h,),

            ButtonComponent(text: 'SAVE', onPressed: (){

              PopUpComponent.showPopUp(context, cardAddedText);
              Future.delayed(const Duration(
                seconds: 3,
              ),
                  (){
                Get.offNamed('/paymentMethod');
                  }
              );
            })
          ],
        ),
      ),
    );
  }


}
