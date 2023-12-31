import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/style.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/textfield_component.dart';

class EditFieldComponent extends StatelessWidget {
   EditFieldComponent({
    super.key,
    required this.fieldTitle,
  });

  final String fieldTitle;

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.h, left: 18.w, right: 18.w),
      height: MediaQuery.of(context).size.height*0.1,
      width: MediaQuery.of(context).size.width*1,
      color: ColorsConstant.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fieldTitle, style: TextStyle(
            color: ColorsConstant.white,
            fontSize: 12.sp
          ),),
           TextFormField(
             //enabled: false,
             controller: myController,
            cursorColor: ColorsConstant.white,
            style: const TextStyle(color: ColorsConstant.white),
            decoration: InputDecoration(
              hintText: myController.text,
            hintStyle: const TextStyle(color: ColorsConstant.white),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorsConstant.white),
            ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ColorsConstant.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
