import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/faqs_component.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: ColorsConstant.black,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: 'FAQs',),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FaqsComponent(),
              SizedBox(height: 24.h,),
              const FaqsComponent(),
              SizedBox(height: 24.h,),
              const FaqsComponent(),
              SizedBox(height: 24.h,),
              const FaqsComponent(),
              SizedBox(height: 24.h,),
              const FaqsComponent(),
              SizedBox(height: 24.h,),
              const FaqsComponent(),
              SizedBox(height: 24.h,),
              const FaqsComponent(),
              SizedBox(height: 24.h,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
