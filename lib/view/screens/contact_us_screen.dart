import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/textfield_component.dart';
import 'package:zeg/view/components/white_btn_component.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();




  final FocusNode nameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode messageFocus = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: 'Contact Us'),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.33,
                child: Center(child: Image.asset('assets/images/contact-us.png')),
              ),
              SizedBox(height: 8.h,),
              Text('Name', style: TextStyle(
                color: ColorsConstant.white,
                fontSize: 12.sp,
              ),),
              TextFieldComponent(
                nameController,
                currentFocus: nameFocus,
                nextFocus: emailFocus,
                fillColor: ColorsConstant.black,
              ),
              SizedBox(height: 14.h,),
              Text('Email', style: TextStyle(
                color: ColorsConstant.white,
                fontSize: 12.sp,
              ),),
              TextFieldComponent(
                emailController,
                currentFocus: emailFocus,
                nextFocus: messageFocus,
                fillColor: ColorsConstant.black,
              ),
              SizedBox(height: 14.h,),
              Text('Message', style: TextStyle(
                color: ColorsConstant.white,
                fontSize: 12.sp,
              ),),
              Form(
                child: TextFieldComponent(
                  messageController,
                  maxLength: 180,
                  maxLines: 5,
                  isSmall: true,
                  currentFocus: messageFocus,
                  fillColor: ColorsConstant.black,
                ),
              ),
              SizedBox(height: 48.h,),
              WhiteBtnComponent(
                  btnRadius: 10.r,
                  btnTitle: 'SEND',
                  onPressed: (){

                  })

            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
