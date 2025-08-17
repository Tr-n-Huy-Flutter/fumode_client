import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fumode_client_mobile/router/app_router.dart';
import 'package:fumode_ui/fumode_ui.dart' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      builder: (_, _) {
        return MaterialApp.router(
          title: 'FuMode',
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          theme: ui.ThemeConfig.defaultLight,
          builder: (context, child) {
            return child!;
          },
        );
      },
    );
  }
}
