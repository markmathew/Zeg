import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeg/common/colors.dart';

import '../../view_models/botton_nav_controller.dart';

class BottomNavigatorBarComponent extends StatefulWidget {
  const BottomNavigatorBarComponent({super.key});

  @override
  State<BottomNavigatorBarComponent> createState() => _BottomNavigatorBarComponentState();
}

class _BottomNavigatorBarComponentState extends State<BottomNavigatorBarComponent> {
  static int selectedIndex = 1;

  final BottomNavController _bottomNavController =
  Get.put(BottomNavController());


  _onTap(int index){
    setState(() {
      selectedIndex = index;
      if(selectedIndex == 0){
        Get.toNamed('/');
      }
      else if(selectedIndex == 1){
      Get.toNamed('/dashBoard');
      }
      else if(selectedIndex == 2){
        Get.toNamed('/accountScreen');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      onTap: _onTap,
      currentIndex: selectedIndex,
        //type: BottomNavigationBarType.shifting,
        selectedItemColor: ColorsConstant.lightGreen,
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Wallet',
              icon: Column(
              children: [
                Icon(Icons.wallet_sharp)
              ])
          ),
          BottomNavigationBarItem(
              label: 'Home',
              icon: Column(
              children: [
                Icon(Icons.home_outlined)
              ])
          ),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: Column(
              children: [
                  Icon(Icons.person)
              ])
          ),

        ] );
  }
}
