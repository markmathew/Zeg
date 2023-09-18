import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/social_icons_component.dart';

import '../../utils/utils.dart';
import '../components/textfield_component.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _signInEmailController = TextEditingController();

  final _signUpEmailController = TextEditingController();

  final _signInPasswordController = TextEditingController();

  final FocusNode _emailFocus = FocusNode();

  final FocusNode _signInPasswordFocus = FocusNode();
  final _signUpPasswordController = TextEditingController();
  final FocusNode _signUpPasswordFocus = FocusNode();
  final _nameController = TextEditingController();

  final _repasswordController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _preferredNameFocus = FocusNode();
  final FocusNode _repasswordFocus = FocusNode();

  final index = Get.arguments;

  TabController? tabController;

  void switchToTab(){
    tabController?.animateTo(1);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.25,
            color: ColorsConstant.black,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 18.h,),
                  Text('WELCOME BACK!', style: TextStyle(
                    fontSize: 20.sp,
                    color: ColorsConstant.white,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 18.h,
                  ),
                  const Text('YOUR LENDING AND\nBORROWING ALLY', textAlign: TextAlign.center,style: TextStyle(
                    color: ColorsConstant.white,
                    fontSize: 12
                  ),),
                ],
              ),
            ),
          ),
          Expanded(
              child: DefaultTabController(
                initialIndex: index?? 0,
                length: 2,
                child: Column(
                  children: [
                    PreferredSize(
                      preferredSize: Size(MediaQuery.of(context).size.width*1, 60.h),
                      child: const Material(
                        color: ColorsConstant.black,
                        child: TabBar(
                          indicatorColor: ColorsConstant.white,
                          labelColor: ColorsConstant.white,
                          tabs: [
                            Tab(text: 'Sign In',),
                            Tab(text: 'Sign Up',),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [

                          //-----------LOGIN SCREEN-----------

                          SingleChildScrollView(
                            child: Column(
                              children: [

                                SizedBox(
                                  height: 55.h,
                                ),

                                const SocialIconsComponent(),

                                SizedBox(height: 37.h),

                                const Text('Or continue with email', style: TextStyle(
                                    fontSize: 15,
                                    color: ColorsConstant.black
                                ),),

                                SizedBox(height: 24.h),

                                Form(
                                  //key: _formKey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 25.w),
                                        child: TextFieldComponent(
                                          _signInEmailController,
                                          keyboardType: TextInputType.emailAddress,
                                          currentFocus: _emailFocus,
                                          nextFocus: _signInPasswordFocus,
                                          borderColor: ColorsConstant.black.withOpacity(0.3),
                                          hintText: "Email",
                                          maxLength: 35,
                                          //validator: validateEmail,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 19.h,
                                      ),

                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 25.w),
                                        child: TextFieldComponent(_signInPasswordController,
                                          currentFocus: _signInPasswordFocus,
                                          keyboardType: TextInputType.text,
                                          isPassword: true,
                                          hintText: "Password",
                                          borderColor: ColorsConstant.black.withOpacity(0.3),
                                          hintTextStyle: GoogleFonts.poppins(),
                                          maxLength: 24,
                                          //validator: validatePassword
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Get.toNamed('/forgot_password');
                                            },
                                            child: const Text(
                                              "Forgot Password?",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: ColorsConstant.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 14.h,),

                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 25.w),
                                        child: ButtonComponent(text: 'SIGN IN', onPressed: (){
                                          Get.toNamed('/dashBoard');
                                        }),
                                      ),

                                      SizedBox(
                                        height: 37.h,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Text('Don\'t have an account? ', style: TextStyle(
                                              color: ColorsConstant.black
                                          ),),
                                          TextButton(
                                            onPressed: (){
                                              switchToTab();
                                            },
                                            child: const Text('Signup', style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: ColorsConstant.black
                                            ),),
                                          )
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //-----------SIGNUP SCREEN-----------

                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 41.h),
                                  child: Form(
                                    key: _formKey,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: 25.w),
                                          width: 370.w,
                                          child: TextFieldComponent(
                                            _nameController,
                                            keyboardType: TextInputType.name,
                                            currentFocus: _nameFocus,
                                            nextFocus: _preferredNameFocus,
                                            //validator: validateName,
                                            textCapitalization: TextCapitalization.words,
                                            hintText: "Name",
                                            hintTextStyle: TextStyle(
                                              color: ColorsConstant.grey,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 19.h,
                                        ),

                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: 25.w),
                                          width: 370.w,
                                          child: TextFieldComponent(
                                            _signUpEmailController,
                                            keyboardType: TextInputType.emailAddress,
                                            currentFocus: _emailFocus,
                                            nextFocus: _signUpPasswordFocus,
                                            //validator: validateEmail,
                                            hintText: "Email",
                                            hintTextStyle: TextStyle(
                                              color: ColorsConstant.grey,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 19.h,
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: 25.w),
                                          width: 370.w,
                                          child: TextFieldComponent(
                                            _signUpPasswordController,
                                            currentFocus: _signUpPasswordFocus,
                                            nextFocus: _repasswordFocus,
                                            keyboardType: TextInputType.text,
                                            isPassword: true,
                                            //validator: validatePassword,
                                            hintText: "Password",
                                            hintTextStyle: TextStyle(
                                              color: ColorsConstant.grey,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 19.h,
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(horizontal: 25.w),
                                          width: 370.w,
                                          child: TextFieldComponent(
                                            _repasswordController,
                                            currentFocus: _repasswordFocus,
                                            keyboardType: TextInputType.text,
                                            isPassword: true,
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
                                              color: ColorsConstant.grey,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 27.h),
                                  child: ButtonComponent(text: ('SIGN UP'), onPressed: (){

                                  }),
                                ),

                                SizedBox(
                                  height: 18.h,
                                ),
                                const Center(
                                  child: Text('Or continue with', style: TextStyle(
                                      color: ColorsConstant.black,
                                      fontSize: 12
                                  ),),
                                ),

                                SizedBox(
                                  height: 37.h,
                                ),

                                const SocialIconsComponent()

                              ],
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                )
              ),
          ),
        ],
      )
    );
  }
}
