import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';

class DashBoardMainOptionsComponent extends StatelessWidget {
  const DashBoardMainOptionsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      width: MediaQuery.of(context).size.width*1,
      child: Row(
        children: [
          Container(
            height: 105.h,
            width: MediaQuery.of(context).size.width*0.25,
            decoration: BoxDecoration(
              color: ColorsConstant.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  begin: Alignment.topRight,

                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,0.6
                  ],
                  colors: [
                    ColorsConstant.white,
                    ColorsConstant.grey
                  ]
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text('%', style: TextStyle(
                    fontSize: 30.sp,
                    color: ColorsConstant.white
                  ),),
                ),
                Text('10\nINTEREST', textAlign: TextAlign.center,style: TextStyle(
                  color: ColorsConstant.white,
                  fontSize: 12.sp
                ),)
              ],
            ),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03),
                  height: 45.h,
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                    color: ColorsConstant.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text('TOP UP', style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: ColorsConstant.black
                    ),),
                  ),
                ),
                SizedBox(height: 15.h,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.03),
                  height: 45.h,
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                      color: ColorsConstant.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text('LENDERS LIST', style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorsConstant.black
                    ),),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
