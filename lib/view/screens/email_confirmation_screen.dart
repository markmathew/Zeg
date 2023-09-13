import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/textfield_component.dart';
import 'package:zeg/view/components/top_blackcontainer_component.dart';

import '../../common/colors.dart';

class EmailConfirmationScreen extends StatelessWidget {
  EmailConfirmationScreen({super.key});

  final _otpController = TextEditingController();
  final FocusNode _otpFocus = FocusNode();

  final String _pin = '4545';
  final ValueNotifier<bool>_isPinValid = ValueNotifier(false);

  void _checkPin(String pin) {
    if (_pin == pin) {
      _isPinValid.value = true;
      Get.toNamed('/reset_password');
    } else {
      _isPinValid.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBlackComponent(text: 'EMAIL CONFIRMATION'),
            Center(
              child: Image.asset('assets/images/email-confirmation.png',
                height: MediaQuery.of(context).size.height*0.4,
              ),
            ),

            TextFieldComponent(
              _otpController,
              keyboardType: TextInputType.emailAddress,
              currentFocus: _otpFocus,
              hintText: "Enter your mail",
              //validator: validateEmail,
              onChanged: (val){

              },
            ),

            SizedBox(height: 18.h),

            ButtonComponent(text: ('CONFIRM'), onPressed: (){
              _checkPin(_pin);
            })
            
          ],
        ),
      ),
    );
  }
}
