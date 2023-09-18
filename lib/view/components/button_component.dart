import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = ColorsConstant.black,
    this.fontSize = 16,
    this.padding,
    this.borderRadius,
    this.boxShadow,
    this.border,
    this.prefixIcon,
    this.suffixIcon,
    this.iconColor = ColorsConstant.white,
    this.textColor = ColorsConstant.white,
    this.isDisabled = false,
  });

  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final double fontSize;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final BoxShadow? boxShadow;
  final BoxBorder? border;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color iconColor;
  final Color textColor;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 370.w,
      //margin: EdgeInsets.symmetric(horizontal: 25.h),
      decoration: BoxDecoration(
        border: border,
        boxShadow: boxShadow != null ? [boxShadow!] : null,
        borderRadius: BorderRadius.circular(borderRadius ?? 27.0),
      ),
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(0),
          shadowColor: const MaterialStatePropertyAll(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 27.0),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            buttonColor,
          ),
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              prefixIcon != null
                  ? Icon(
                prefixIcon!,
                color: iconColor,
              )
                  : const SizedBox.shrink(),
              prefixIcon != null
                  ? const SizedBox(width: 10)
                  : const SizedBox.shrink(),
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
              suffixIcon != null
                  ? Icon(
                suffixIcon!,
                color: iconColor,
              )
                  : const SizedBox.shrink(),
              suffixIcon != null
                  ? const SizedBox(width: 10)
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
