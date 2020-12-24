import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/values/values.dart';

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
  Widget _buildFeatureItem(String imageName, String info, double marginTop) {
    return Container(
      width: 295.h,
      height: 80.h,
      margin: EdgeInsets.only(top: marginTop.h),
      child: Row(
        children: <Widget>[
          Container(
            width: 80.r,
            height: 80.r,
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: 195.w,
            child: Text(
              info,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.ssp),
            ),
          )
        ],
      ),
    );
  }

  /// 开始按钮
  Widget _buildStartButton() {
    return Container(
      width: 295.w,
      height: 44.h,
      margin: EdgeInsets.only(bottom: 20.h),
      child: FlatButton(
        color: AppColors.primaryElement,
        textColor: AppColors.primaryElementText,
        child: Text("Get started"),
        shape: RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
        onPressed: () {
          Navigator.pushNamed(context, "/sign-in");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        ScreenUtil.init(constraints,
            designSize: Size(375, (812 - 44 - 34).toDouble()),
            allowFontScaling: true);
        return Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                _buildPageHeadTitle(),
                _buildPageHeaderDetail(),
                _buildFeatureItem(
                  "feature-1",
                  "Compelling photography and typography provide a beautiful reading",
                  86,
                ),
                _buildFeatureItem(
                  "feature-2",
                  "Sector news never shares your personal data with advertisers or publishers",
                  40,
                ),
                _buildFeatureItem(
                  "feature-3",
                  "You can get Premium to unlock hundreds of publications",
                  40,
                ),
                Spacer(),
                _buildStartButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
