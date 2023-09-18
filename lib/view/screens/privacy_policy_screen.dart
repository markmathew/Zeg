import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/drawer_component.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      drawer: DrawerComponent(),
      appBar: AppBarComponent(pageTitle: 'Privacy Policy'),
      body: Center(child:Text('Enter Privacy policy here', style: TextStyle(
        color: ColorsConstant.white,
        fontSize: 16.sp
      ),),),
    );
  }
}
