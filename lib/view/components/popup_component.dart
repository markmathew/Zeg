import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors.dart';

class PopUpComponent extends StatelessWidget {
  const PopUpComponent({super.key, required this.myTitle});

  final String myTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: showPopUp(context, myTitle),
    );
  }

  static showPopUp(BuildContext context, String myTitle){
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
            child: Text(myTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32.sp,
                  color: ColorsConstant.white,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
        ),
      );
    });
  }

}
