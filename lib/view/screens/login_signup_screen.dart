import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/social_icons_component.dart';

import '../../utils/utils.dart';
import '../components/textfield_component.dart';

class LoginScreen extends StatelessWidget {
 // const LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  //final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _preferredNameController = TextEditingController();
  //final _emailController = TextEditingController();
  //final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();

  final FocusNode _nameFocus = FocusNode();
  final FocusNode _preferredNameFocus = FocusNode();
  //final FocusNode _emailFocus = FocusNode();
  //final FocusNode _passwordFocus = FocusNode();
  final FocusNode _repasswordFocus = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.2,
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
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    elevation: 0.0,
                    backgroundColor: ColorsConstant.black,
                    bottom: const PreferredSize(
                      preferredSize: Size.fromHeight(10),
                      child: TabBar(
                        indicatorWeight: 2,
                        indicatorColor: ColorsConstant.white,
                        tabs: [
                          Tab(icon: Text('LOG IN')),
                          Tab(icon: Text('SIGN UP')),
                        ],
                      ),
                    ),
                  ),
                  body: TabBarView(
                    children: [

                      //-----------LOGIN SCREEN-----------

                      SingleChildScrollView(
                        child: Column(
                          children: [

                             SizedBox(
                              height: 35.h,
                            ),

                            const SocialIconsComponent(),

                            SizedBox(height: 25.h),

                            const Text('Or continue with email', style: TextStyle(
                              fontSize: 15,
                              color: ColorsConstant.black
                            ),),

                            SizedBox(height: 20.h),

                            Form(
                              //key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                                    width: 370.w,
                                    child: TextFieldComponent(
                                      _emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      currentFocus: _emailFocus,
                                      nextFocus: _passwordFocus,
                                      hintText: "Email",
                                      //validator: validateEmail,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13.h,
                                  ),

                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                                    width: 370.w,
                                    child: TextFieldComponent(_passwordController,
                                        currentFocus: _passwordFocus,
                                        keyboardType: TextInputType.text,
                                        isPassword: true,
                                        hintText: "Password",
                                        hintTextStyle: GoogleFonts.poppins(),
                                        //validator: validatePassword
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          //Get.toNamed('');
                                          // Navigator.of(context)
                                          //     .pushNamed(ForgotPasswordScreen.routeName);
                                        },
                                        child: InkWell(
                                          onTap: (){
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
                                      ),
                                    ],
                                  ),

                                  ButtonComponent(text: 'SIGN IN', onPressed: (){
                                      Get.toNamed('/dashBoard');
                                  }),

                                  SizedBox(
                                    height: 35.h,
                                  ),

                                 const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Don\'t have an account?', style: TextStyle(
                                        color: ColorsConstant.black
                                      ),),
                                      Text('Signup', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorsConstant.black
                                      ),)
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
                              margin: EdgeInsets.symmetric(vertical: 18.h),
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
                                      height: 10.h,
                                    ),

                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 25.w),
                                      width: 370.w,
                                      child: TextFieldComponent(
                                        _emailController,
                                        keyboardType: TextInputType.emailAddress,
                                        currentFocus: _emailFocus,
                                        nextFocus: _passwordFocus,
                                        //validator: validateEmail,
                                        hintText: "Email",
                                        hintTextStyle: TextStyle(
                                          color: ColorsConstant.grey,
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 25.w),
                                      width: 370.w,
                                      child: TextFieldComponent(
                                        _passwordController,
                                        currentFocus: _passwordFocus,
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
                                      height: 10.h,
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
                            
                            ButtonComponent(text: ('SIGN UP'), onPressed: (){

                            }),

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
                              height: 18.h,
                            ),

                            const SocialIconsComponent()

                          ],
                        ),
                      )
                    ],
                  )
                ),
              ),
          ),
        ],
      )
    );
  }
}
