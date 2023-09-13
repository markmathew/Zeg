import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/amountbalance_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/dashboard_mainoptions_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/graph_component.dart';
import 'package:zeg/view/components/notification_bar_component.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      drawer: const DrawerComponent(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions:  [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              child: const NotificationBarComponent())
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dashboard-avatar.png'),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text('HI, MIKE!', style: TextStyle(
                    color: ColorsConstant.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MY BALANCE', style: TextStyle(
                    fontSize: 12.sp,
                    color: ColorsConstant.white.withOpacity(0.7)
                  ),),
                  SizedBox(height: 15.h,),
                  const AmountBalanceComponent(),
                  SizedBox(height: 20.h,),
                  const DashBoardMainOptionsComponent(),
                  SizedBox(height: 20.h,),
                  SizedBox(
                      height: MediaQuery.of(context).size.height*0.32,
                      width: MediaQuery.of(context).size.width*1,
                      child: GraphComponent())


                ],
              ),
            ),


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorBarComponent(),
    );
  }
}
