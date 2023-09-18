import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/top_blackcontainer_component.dart';

import '../../common/colors.dart';
import '../../utils/utils.dart';
import '../components/textfield_component.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();
  
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _repasswordFocus = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopBlackComponent(text: 'RESET PASSWORD'),

            Center(
              child: Image.asset('assets/images/reset.png',
                height: MediaQuery.of(context).size.height*0.4,
              ),
            ),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 31.w),
                    child: TextFieldComponent(
                      _passwordController,
                      currentFocus: _passwordFocus,
                      nextFocus: _repasswordFocus,
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      borderColor: ColorsConstant.black.withOpacity(0.3),
                      //validator: validatePassword,
                      hintText: "Password",
                      hintTextStyle: TextStyle(
                        color: ColorsConstant.hintTextColor,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 31.w),
                    child: TextFieldComponent(
                      _repasswordController,
                      currentFocus: _repasswordFocus,
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      borderColor: ColorsConstant.black.withOpacity(0.3),

                      // validator: (value) {
                      //   if (_passwordController.value ==
                      //       _repasswordController.value) {
                      //     return null;
                      //   } else {
                      //     return "Password does not match";
                      //   }
                      // },
                      hintText: "Re-enter Password",
                      hintTextStyle: TextStyle(
                        color: ColorsConstant.hintTextColor,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 27.h),
            
            ButtonComponent(text: 'DONE', onPressed: (){
              if(_formKey.currentState!.validate()){
                Get.toNamed('/loginScreen');
              }
            })

          ],
        ),
      ),
    );
  }
}
