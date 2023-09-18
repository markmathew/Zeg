import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/loan_card_component.dart';
import 'package:zeg/view/components/white_btn_component.dart';

class LoanRequestScreen extends StatelessWidget {
  const LoanRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: 'Loan Request'),
      body: SingleChildScrollView(
        child: Stack(
          children:[
            Column(
              children: [
                Container(
                height: MediaQuery.of(context).size.height*0.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.1,
                        0.9
                      ],
                      colors: [
                      ColorsConstant.neonGreen,
                      ColorsConstant.lightGreen
                      ]
                    )
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  color: ColorsConstant.black,
                ),
              ],
            ),

            const LoanCardComponent(),
            Positioned(
                left: 30.w,
                right: 30.w,
                bottom: 173.h,
                child: WhiteBtnComponent(
                    btnRadius: 12.r,
                    btnTitle: 'APPROVE',
                    onPressed: (){

                })),
            Positioned(
              bottom: 100.h,
                left: 30.w,
                right: 30.w,
                child: ButtonComponent(
                  buttonColor: ColorsConstant.white.withOpacity(0.05),
                  text: 'DECLINE',
                  borderRadius: 12.r,
                  onPressed: () {

                  },

              ),)
        ]),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
