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
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Fumode',
          debugShowCheckedModeBanner: false,
          theme: ui.ThemeConfig.defaultLight,
          home: child,
        );
      },
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              'Hello, Fumode UI!',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ),
      ),
    );
  }
}
