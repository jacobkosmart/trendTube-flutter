import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_bottom_nav_sample/pages/home/home_controller.dart';

// GetView 를 만들어서 HomeController 에 있는 변수를 controller.변수명 or method 를 가져와서 사용할 수 있음
class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Home Page!!",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
