import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_bottom_nav_sample/components/bottom_sheet.dart';

class DashboardController extends GetxController {
  int tabIndex = 0;
  int currentIndex = 0;
  Color inActiveColor = Colors.grey;

  void changeTabIndex(int index) {
    if (index == 4) {
      _showBottonSheet();
    } else {
      tabIndex = index;
      update();
    }
  }

  void _showBottonSheet() {
    Get.bottomSheet(YoutubeBottomSheet());
  }
}
