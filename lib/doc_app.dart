import 'package:flutter/material.dart';
import 'package:flutter_complete_app/core/routing/app_router.dart';
import 'package:flutter_complete_app/core/routing/routes.dart';
import 'package:flutter_complete_app/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();
  DocApp({super.key, required AppRouter appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Doc App",
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: ColorsManager.scaffoldBackground,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
