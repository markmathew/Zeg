import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:zeg/common/colors.dart';


class SwitchButtonComponent extends StatefulWidget {
  SwitchButtonComponent({super.key});

  @override
  State<SwitchButtonComponent> createState() => _SwitchButtonComponentState();
}

bool switchStatus = false;

class _SwitchButtonComponentState extends State<SwitchButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
        height: 22.h,
        width: 48.w,
        activeColor: ColorsConstant.neonGreen.withOpacity(0.6),
        inactiveColor: ColorsConstant.grey.withOpacity(0.4),
        toggleColor: ColorsConstant.neonGreen,
        value: switchStatus,
        onToggle:(value){
          setState(() {
            switchStatus = value;
            //print(switchStatus);
          });
    }

    );
  }
}
