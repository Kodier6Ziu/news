import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/common/values/colors.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  /// 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: 60.h),
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 24.ssp),
      ),
    );
  }

  /// 页头说明
  Widget _buildPageHeaderDetail() {
    return Container(
      width: 242.w,
      height: 70.h,
      margin: EdgeInsets.only(top: 14.h),
      child: Text(
        "The best of news channels all in one place. Trusted sources and personalized news for you.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Avenir",
          fontWeight: FontWeight.normal,
          fontSize: 16.h,
          height: 1.3,
        ),
      ),
    );
  }

  /// 特性说明
  Widget _buildFeatureItem() {
    return Text("data");
  }

  /// 开始按钮
  Widget _buildStartButton() {
    return Text("data");
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      ScreenUtil.init(constraints,
          designSize: Size(375, (812 - 44 - 34).toDouble()),
          allowFontScaling: true);
      return Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              _buildPageHeadTitle(),
              _buildPageHeaderDetail(),
              _buildFeatureItem(),
              _buildStartButton(),
            ],
          ),
        ),
      );
    });
  }
}
