import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_bottom_nav_sample/pages/detail/detail_page.dart';
import 'package:getx_bottom_nav_sample/pages/dashboard/dashboard.dart';
import 'package:getx_bottom_nav_sample/pages/dashboard/dashboard_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube Favorite App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: "/",
      initialBinding: DashboardBinding(),
      getPages: [
        GetPage(
          name: "/",
          page: () => MyDashBoard(),
        ),
        GetPage(
          name: "/detail/:videoId",
          page: () => YoutubeDetail(),
        ),
      ],
    );
  }
}
