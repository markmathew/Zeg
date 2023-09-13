import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';
import 'package:zeg/view/components/editfield_component.dart';

class ProfileManagementScreen extends StatelessWidget {
  const ProfileManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      extendBodyBehindAppBar: true,
      drawer: const DrawerComponent(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Profile', style: TextStyle(
          color: ColorsConstant.white,
          fontWeight: FontWeight.w700,
          fontSize: 16.sp
        ),),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Get.toNamed('/editProfileScreen');
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 25.h,
              width: 38.w,
              decoration: BoxDecoration(
                  color: ColorsConstant.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: const Center(
                child: Icon(Icons.edit, color: ColorsConstant.white,),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width*1,
              color: ColorsConstant.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dashboard-avatar.png'),
                    radius: 60,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text('James Cunn', style: TextStyle(
                    color: ColorsConstant.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500
                  ),),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text('jamescunn@gmail.com', style: TextStyle(
                      color: ColorsConstant.white,
                      fontSize: 12.sp,
                  ),),

                ],
              ),
            ),
            EditFieldComponent(
              fieldTitle: 'My Name',
            ),
            EditFieldComponent(
              fieldTitle: 'Email',
            ),
            EditFieldComponent(
              fieldTitle: 'Contact Number',
            ),
            EditFieldComponent(
              fieldTitle: 'Address',
            ),
           ],
        ),
      ),
      bottomNavigationBar: const BottomNavigatorBarComponent(),
    );
  }
}
