import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/notification_component.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: ''),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 34.w, top: 45.h),
              child: const Column(
                children: [
                  NotificationComponent(
                    name: 'James Cunn',
                    description: 'James has approved your loan request. You can Now sign\n the agreement',
                  ),
                  NotificationComponent(
                    name: 'James Cunn',
                    description: 'James has approved your loan request. You can Now sign\n the agreement',
                  ),
                  NotificationComponent(
                    name: 'James Cunn',
                    description: 'James has approved your loan request. You can Now sign\n the agreement',
                  ),
                  NotificationComponent(
                    name: 'James Cunn',
                    description: 'James has approved your loan request. You can Now sign\n the agreement',
                  ),
                  NotificationComponent(
                    name: 'James Cunn',
                    description: 'James has approved your loan request. You can Now sign\n the agreement',
                  ),
                  NotificationComponent(
                    name: 'James Cunn',
                    description: 'James has approved your loan request. You can Now sign\n the agreement',
                  ),
                  NotificationComponent(
                    name: 'James Cunn',
                    description: 'James has approved your loan request. You can Now sign\n the agreement',
                  ),
                  NotificationComponent(
                    name: 'James Cunn',
                    description: 'James has approved your loan request. You can Now sign\n the agreement',
                  ),

                ],
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
