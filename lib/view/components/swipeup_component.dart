import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../common/colors.dart';

class SwipeUpComponent extends StatelessWidget {
  const SwipeUpComponent({super.key});

  void _handleVerticalDragDown(DragDownDetails details) {
    // This function will be called when a vertical drag gesture starts.
    print('Vertical Drag Down Event');
    Get.offNamed('/loginScreen');
    // You can add your desired logic here.
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragDown: _handleVerticalDragDown,
      child: Container(
          margin: EdgeInsets.only(top: 40.h),
          height: MediaQuery.of(context).size.height*0.15,
          width: MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(
              color: ColorsConstant.grey,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_circle_up, color: ColorsConstant.white,size: 35.h,),
              SizedBox(height: 20.h,),
              const Text('SWIPE UP TO LOGIN', style: TextStyle(
                  color: ColorsConstant.white
              ),)
            ],
          ),
      ),
    );
  }

  gotoLogin(){

  }

}
