import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';

class DurationComponent extends StatefulWidget {
  const DurationComponent({super.key});

  @override
  State<DurationComponent> createState() => _DurationComponentState();
}

class _DurationComponentState extends State<DurationComponent> {
  final List<String> items = [
    'This Month',
    'Last Month',
    'Last Year',
    'Overall',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
      width: 95.w,
      decoration: BoxDecoration(
        color: ColorsConstant.black,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            //isExpanded: true,
            hint: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                'This Month',
                style: TextStyle(
                  fontSize: 10.sp,
                  color: ColorsConstant.white,
                ),
              ),
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 10.sp,
                  color: ColorsConstant.white
                ),
              ),
            ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              //padding: EdgeInsets.symmetric(horizontal: 16),
              height: 20.h,
              width: 100.w,
            ),
            dropdownStyleData: const DropdownStyleData(
              decoration: BoxDecoration(
                color: ColorsConstant.black
              )
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 30,
            ),
          ),
        ),
      ),
    );
  }
}
