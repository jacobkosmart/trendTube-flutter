import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/model/custom_animated_bottom_bar.dart';
import 'package:getx_bottom_nav_sample/pages/add/add_page.dart';
import 'package:getx_bottom_nav_sample/pages/dashboard/dashboard_controller.dart';
import 'package:getx_bottom_nav_sample/pages/home/home_page.dart';
import 'package:getx_bottom_nav_sample/pages/messages/messages_page.dart';
import 'package:getx_bottom_nav_sample/pages/users/users_page.dart';

class MyDashBoard extends StatelessWidget {
  const MyDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                UsersPage(),
                MessagesPage(),
                AddPage(),
              ],
            ),
          ),
          bottomNavigationBar: CustomAnimatedBottomBar(
            containerHeight: 70,
            backgroundColor: Colors.white,
            selectedIndex: controller.tabIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            onItemSelected: controller.changeTabIndex,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Colors.pinkAccent,
                inactiveColor: controller.inActiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.trending_up),
                title: Text('Trends'),
                activeColor: Colors.pinkAccent,
                inactiveColor: controller.inActiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.subject),
                title: Text('Subscribe'),
                activeColor: Colors.pinkAccent,
                inactiveColor: controller.inActiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.video_library),
                title: Text('Library'),
                activeColor: Colors.pinkAccent,
                inactiveColor: controller.inActiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.add),
                title: Text('Add'),
                activeColor: Colors.pinkAccent,
                inactiveColor: controller.inActiveColor,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
