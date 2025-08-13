import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fumode_ui/fumode_ui.dart' as ui;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        ui.DevicesConstant.designDeviceWidth,
        ui.DevicesConstant.designDeviceHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Fumode',
        debugShowCheckedModeBanner: false,
        theme: ui.ThemeConfig.defaultLight,
        home: Center(
          child: Container(
            color: ui.AppColors.primaryOrange,
            child: Text(
              'Hello, Fumode UI!',
              style: TextStyle(
                color: ui.AppColors.gray0,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),),
          ),
        ),


    );
  }
}

