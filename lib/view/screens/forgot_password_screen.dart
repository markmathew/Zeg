import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/textfield_component.dart';
import 'package:zeg/view/components/top_blackcontainer_component.dart';
import 'package:zeg/view/screens/email_confirmation_screen.dart';

class ForgotPassword extends StatelessWidget {

  final _emailController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBlackComponent(
              text: 'FORGOT PASSWORD',
            ),
            Center(
              child: Image.asset('assets/images/forgot-password.png',
                height: MediaQuery.of(context).size.height*0.4,
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 27.h, left: 31.w, right: 31.w),
              child: TextFieldComponent(
                _emailController,
                keyboardType: TextInputType.emailAddress,
                currentFocus: _emailFocus,
                hintText: "Enter your mail",
                hintTextStyle: const TextStyle(color: ColorsConstant.hintTextColor),
                borderColor: ColorsConstant.black.withOpacity(0.3),
                //validator: validateEmail,
              ),
            ),
            ButtonComponent(text: 'Send Code', onPressed: (){
              Get.toNamed('/confirmation_code');
            })
          ],
        ),
      ),
    );
  }
}
