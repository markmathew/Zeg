import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/colors.dart';

class TextFieldComponent extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final bool isPassword;
  final bool isRequired;
  final String? Function(String?)? validator;
  final Function(String _)? onChanged;
  final TextInputType keyboardType;
  final int maxLength;
  final dynamic suffixIcon;
  final Function()? onSuffixPressed;
  final Widget? prefixWidget;
  final Color fillColor;
  final bool enlargePrfixWidget;
  final Color labelColor;
  final bool readOnly;
  final bool enabled;
  final int? maxLines;
  final VoidCallback? onTap;
  final FocusNode currentFocus;
  final FocusNode? nextFocus;
  final EdgeInsetsGeometry? padding;
  final bool isSmall;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final List<TextInputFormatter>? formatter;
  final TextAlign textAlign;
  final Color borderColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final double? borderRadius;
  final TextCapitalization? textCapitalization;
  final bool enableSuggestions;
  final bool autocorrect;

  const TextFieldComponent(
      this.controller, {
        Key? key,
        this.hintText,
        this.labelText,
        this.isPassword = false,
        this.isRequired = false,
        this.validator,
        this.onChanged(String _)?,
        this.keyboardType = TextInputType.text,
        this.maxLength = 45,
        this.suffixIcon,
        this.onSuffixPressed,
        this.prefixWidget,
        this.onTap,
        this.fillColor = ColorsConstant.white,
        this.enlargePrfixWidget = true,
        this.labelColor = ColorsConstant.grey,
        this.readOnly = false,
        this.enabled = true,
        this.maxLines,
        required this.currentFocus,
        this.nextFocus,
        this.padding,
        this.isSmall = false,
        this.hintTextStyle,
        this.textStyle,
        this.formatter,
        this.textAlign = TextAlign.start,
        this.borderColor = ColorsConstant.grey,
        this.enabledBorder,
        this.focusedBorder,
        this.errorBorder,
        this.borderRadius,
        this.textCapitalization,
        this.autocorrect = false,
        this.enableSuggestions = false,
      }) : super(key: key);

  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return widget.isSmall == false
        ? Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _showLabelText(),
        SizedBox(
          height: 4.h,
        ),
        Container(
          height: 48.h,
          //margin: EdgeInsets.symmetric(horizontal: 25.w),
          child: Center(child: _textField())),
      ],
    )
        : _textField();
  }

  Widget _textField() {
    return TextFormField(
      maxLines: widget.maxLines ?? 1,
      controller: widget.controller,
      readOnly: widget.readOnly,
      focusNode: widget.currentFocus,
      enableSuggestions: widget.enableSuggestions,
      autocorrect: widget.autocorrect,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enabled: widget.enabled,
      obscureText: widget.isPassword ? _hidePassword : !_hidePassword,
      maxLength: widget.maxLength,
      textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
      textInputAction: widget.nextFocus != null
          ? TextInputAction.next
          : TextInputAction.done,
      onTap: widget.onTap,
      onChanged: (_) => widget.onChanged == null ? () {} : widget.onChanged!(_),
      onEditingComplete: () {
        widget.currentFocus.unfocus();
        if (widget.nextFocus != null) {
          widget.nextFocus?.requestFocus();
        }
      },
      style: widget.textStyle ??
          GoogleFonts.inter(fontSize: 14, color: ColorsConstant.grey),
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.formatter,
      textAlign: widget.textAlign,
      decoration: InputDecoration(
        counterText: '',
        filled: true,
        errorMaxLines: 2,
        fillColor: widget.fillColor,
        enabledBorder: widget.enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 27),
            ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 27),
        ),
        focusedBorder: widget.focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 27),
            ),
        errorBorder: widget.errorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: ColorsConstant.grey),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 27),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsConstant.grey),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 27),
        ),
        contentPadding: widget.padding ??
            EdgeInsetsDirectional.only(
                start: 16,
                top: 16,
                bottom: 15,
                end: widget.suffixIcon != null ? 0 : 16),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 27),
        ),
        hintText: widget.hintText ?? '',
        hintStyle: widget.hintTextStyle ??
            GoogleFonts.inter(fontSize: 14, color: ColorsConstant.grey),
        prefixIcon: widget.prefixWidget != null
            ? SizedBox(
          width: widget.enlargePrfixWidget ? 102 : null,
          child: widget.prefixWidget,
        )
            : null,
        suffixIcon: widget.isPassword
            ? GestureDetector(
          child: _hidePassword
              ? Icon(
            Icons.visibility_off,
            color: ColorsConstant.black.withOpacity(0.3),
          )
              : const Icon(
            Icons.visibility,
            color: ColorsConstant.grey,
          ),
          onTap: () {
            setState(() {
              _hidePassword = !_hidePassword;
            });
          },
        )
            : widget.suffixIcon != null && widget.onSuffixPressed != null
            ? GestureDetector(
          onTap: widget.onSuffixPressed,
          child: widget.suffixIcon.runtimeType == IconData
              ? Icon(
            widget.suffixIcon,
            color: ColorsConstant.grey,
          )
              : widget.suffixIcon,
        )
            : null,
      ),
    );
  }

  Widget _showLabelText() {
    if (widget.labelText != null) {
      return Padding(
        padding: EdgeInsets.only(left: 18.w),
        child: Row(
          children: [
            Text(
              widget.labelText!,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                color: widget.labelColor,
              ),
            ),
            Text(
              widget.isRequired ? '*' : '',
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                color: widget.labelColor,
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
