import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors.dart';

class PopUpComponent extends StatelessWidget {
  const PopUpComponent({super.key, required this.myTitle, required this.subTitle});

  final String myTitle;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: showPopUp(context, myTitle, subTitle),
    );
  }

  static showPopUp(BuildContext context, String myTitle, String subTitle){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.transparent,
        content: Container(
          height: MediaQuery.of(context).size.height*0.2,
          width: MediaQuery.of(context).size.width*0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              gradient:  const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ColorsConstant.neonGreen,
                    ColorsConstant.lightGreen
                  ],
                  stops: [
                    0.1,
                    0.9
                  ]
              )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(myTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 26.sp,
                      color: ColorsConstant.white,
                      fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 10.h,),
                Text(subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: ColorsConstant.white,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

}
