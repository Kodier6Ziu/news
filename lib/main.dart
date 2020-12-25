import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/pages/welcome/welcomePage.dart';
import 'package:news/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, (812 - 44 - 34).toDouble()),
      allowFontScaling: true,
      child: MaterialApp(
        title: "Material App",
        routes: staticRoutes,
        home: WelcomePage(),
      ),
    );
  }
}
