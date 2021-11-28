import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CommonController extends GetxController {
  Widget closeBtn() {
    return ElevatedButton(
      onPressed: () {
        Get.back();
      },
      child: Text("Close"),
    );
  }
}
