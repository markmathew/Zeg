import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zeg/view/components/button_component.dart';
import 'package:zeg/view/components/white_btn_component.dart';
import 'package:zeg/view_models/profile_controller.dart';

import '../../common/colors.dart';
import '../components/drawer_component.dart';
import '../components/editfield_component.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _contactController = TextEditingController();
  final _addressController = TextEditingController();

  final FocusNode _nameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _contactFocus = FocusNode();
  final FocusNode _addressFocus = FocusNode();

  final ProfileController profileController = Get.put(ProfileController());


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
                   Stack(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/dashboard-avatar.png'),
                        radius: 60,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: InkWell(
                        onTap: (){
                          Get.bottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            Container(
                              height: MediaQuery.of(context).size.height*0.15,
                              decoration: BoxDecoration(
                                color: ColorsConstant.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.r),
                                  topRight: Radius.circular(20.r),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      profileController.getImage(ImageSource.camera);
                                      Get.back();
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.camera_alt,
                                          size: 40,
                                          color: ColorsConstant.neonGreen,
                                        ),
                                        Text('Camera', style: TextStyle(
                                          color: ColorsConstant.black,
                                          fontSize: 16.sp
                                        ),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 80.w,),
                                  GestureDetector(
                                    onTap: () {
                                      profileController.getImage(ImageSource.gallery);
                                      Get.back();
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                        Icons.photo_library_sharp,
                                        size: 40,
                                        color: ColorsConstant.neonGreen,
                                      ),
                                        Text('Gallery', style: TextStyle(
                                            color: ColorsConstant.black,
                                            fontSize: 16.sp
                                        ),)
                                    ]),
                                  )
                                ],
                              ),
                            )
                          );

                        },
                        child: Container(
                          height: 31.h,
                          width: 31.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: ColorsConstant.grey
                          ),
                          child: Center(
                            child: Image.asset('assets/vectors/camera-icon.png', height: 18.h,width: 20.w,)
                          )
                        ))
                      )
                  ]),
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
              status: true,
              fieldTitle: 'My Name',
              currentFocus: _nameFocus,
              nextFocus: _emailFocus,
              controller: _nameController,
            ),
            EditFieldComponent(
              status: true,
              fieldTitle: 'Email',
              currentFocus: _emailFocus,
              nextFocus: _contactFocus,
              controller: _emailController,
            ),
            EditFieldComponent(
              status: true,
              fieldTitle: 'Contact Number',
              currentFocus: _contactFocus,
              nextFocus: _addressFocus,
              controller: _contactController,
            ),
            EditFieldComponent(
              status: true,
              fieldTitle: 'Address',
              currentFocus: _addressFocus,
              controller: _addressController,
            ),
            SizedBox(height: 61.h,),

            WhiteBtnComponent(
              btnRadius: 12.r,
              btnTitle: 'UPDATE',
              onPressed: (){
              Get.back();
            },)

          ],
        ),
      ),
    );
  }
}
