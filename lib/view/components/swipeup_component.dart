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
          height: MediaQuery.of(context).size.height*0.15,
          width: MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [
                  0.1,
                  0.9
                ],
                colors:[
                  ColorsConstant.white.withOpacity(0.33),
                  ColorsConstant.white.withOpacity(0.25)
                ]
                
              ),
              borderRadius: BorderRadius.circular(10.r)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_circle_up, color: ColorsConstant.white,size: 35.h,),
              SizedBox(height: 25.h,),
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
