import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(
        pageTitle: 'Terms & Conditions',
      ),
      body: Center(
        child: Text('Enter Terms and Conditions Here', style: TextStyle(
          color: ColorsConstant.white,
          fontSize: 16.sp
        ),), ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
