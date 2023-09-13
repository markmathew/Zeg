// import 'package:flutter/material.dart';
//
// import 'notification_bar_component.dart';
//
// class AppBarComponent extends StatelessWidget implements PreferredSizeWidget{
//   const AppBarComponent({Key? key}) : super(key: key);
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       toolbarHeight: MediaQuery.of(context).size.height * 0.12,
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       actions:  [
//         Container(
//           margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
//           child: const NotificationBarComponent(),
//         ),
//
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'notification_bar_component.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({super.key, required this.pageTitle});

    final String pageTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(pageTitle, style: TextStyle(
        color: ColorsConstant.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w700
      ),),
      centerTitle: true,
      toolbarHeight: MediaQuery.of(context).size.height * 0.12,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions:  [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          child: const NotificationBarComponent(),
        ),
      ],
    );
  }
}

