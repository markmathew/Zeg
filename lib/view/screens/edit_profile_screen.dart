import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/white_btn_component.dart';

import '../../common/colors.dart';
import '../components/drawer_component.dart';
import '../components/editfield_component.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstant.black,
      extendBodyBehindAppBar: true,
      drawer: const DrawerComponent(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Edit Profile', style: TextStyle(
            color: ColorsConstant.white,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp
        ),),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.35,
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
            SizedBox(height: 16.h,),

            WhiteBtnComponent(btnTitle: 'UPDATE',onPressed: (){
              Get.back();
            },)

          ],
        ),
      ),
    );
  }
}
