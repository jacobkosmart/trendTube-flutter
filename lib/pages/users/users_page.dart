import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/pages/add/add_controller.dart';

class UsersPage extends StatelessWidget {
  final AddController controller = Get.put(AddController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Users Numbers",
                style: TextStyle(fontSize: 20),
              ),
              Divider(),
              Obx(
                () => Text(
                  "${controller.counter}",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Divider(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text("Decrease"),
                onPressed: () => controller.decreseCount(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
