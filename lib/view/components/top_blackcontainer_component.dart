import 'package:flutter/material.dart';
import 'package:zeg/common/colors.dart';

class TopBlackComponent extends StatelessWidget {
  const TopBlackComponent({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.12,
      width: MediaQuery.of(context).size.width*1,
      decoration: const BoxDecoration(
        color: ColorsConstant.black
      ),
      child: Center(
        child: Text(text, style: const TextStyle(
          color: ColorsConstant.white
        ),),
      ),
    );
  }
}
