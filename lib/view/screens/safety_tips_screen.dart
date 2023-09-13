import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/notification_bar_component.dart';

class SafetyTipScreen extends StatelessWidget {
  const SafetyTipScreen({super.key});

  //const SafetyTipScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: 'Safety Tips',),
      body: Center(
        child: Text('HERE WE PLACE THE SAFETY TIPS TEXT', style: TextStyle(
          color: ColorsConstant.white,
          fontSize: 16.sp
        ),),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
