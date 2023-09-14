import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeg/view/screens/account_screen.dart';
import 'package:zeg/view/screens/add_card_screen.dart';
import 'package:zeg/view/screens/be_lender_screen.dart';
import 'package:zeg/view/screens/contact_us_screen.dart';
import 'package:zeg/view/screens/dashboard_screen.dart';
import 'package:zeg/view/screens/edit_profile_screen.dart';
import 'package:zeg/view/screens/email_confirmation_screen.dart';
import 'package:zeg/view/screens/faqs_screen.dart';
import 'package:zeg/view/screens/forgot_password_screen.dart';
import 'package:zeg/view/screens/loan_history_screen.dart';
import 'package:zeg/view/screens/login_signup_screen.dart';
import 'package:zeg/view/screens/payment_method_screen.dart';
import 'package:zeg/view/screens/profile_management_screen.dart';
import 'package:zeg/view/screens/reset_password_screen.dart';
import 'package:zeg/view/screens/safety_tips_screen.dart';
import 'package:zeg/view/screens/swipe_up.dart';


void main(){
  runApp(const ZegApp());
}

class ZegApp extends StatelessWidget {
  const ZegApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).primaryTextTheme
            )
          ),
          home: const SwipeUp(),

          getPages: [

            GetPage(name: '/', page: ()=> const SwipeUp()),
            GetPage(name: '/loginScreen', page: ()=> LoginScreen()),
            GetPage(name: '/forgot_password', page: ()=> ForgotPassword()),
            GetPage(name: '/confirmation_code', page: ()=> EmailConfirmationScreen()),
            GetPage(name: '/reset_password', page: ()=> ResetPasswordScreen()),
            GetPage(name: '/dashBoard', page: ()=> const DashBoardScreen()),
            GetPage(name: '/accountScreen', page: ()=> const AccountScreen()),
            GetPage(name: '/safetyTipsScreen', page:()=>const  SafetyTipScreen()),
            GetPage(name: '/profileManagementScreen', page: ()=> const ProfileManagementScreen()),
            GetPage(name: '/editProfileScreen', page: ()=> const EditProfileScreen()),
            GetPage(name: '/paymentMethod', page: ()=> const PaymentMethodScreen()),
            GetPage(name: '/addCardScreen', page: ()=> const AddCardScreen()),
            GetPage(name: '/beLenderScreen', page: ()=> BeLenderScreen()),
            GetPage(name: '/loanHistoryScreen', page: ()=> const LoanHistoryScreen()),
            GetPage(name: '/faqsScreen', page: ()=> const FaqsScreen()),
            GetPage(name: '/contactUs', page: ()=> ContactUsScreen())

          ],
        );
      },

    );
  }
}