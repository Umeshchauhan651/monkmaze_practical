import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monkmaze_practical/routers/nav_router.dart';
import 'package:monkmaze_practical/routers/router_constants.dart';
import 'package:monkmaze_practical/utility/app_theme.dart';
import 'package:monkmaze_practical/utility/constant_file.dart';
import 'package:sizing/sizing_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizingBuilder(
      builder: () => GetMaterialApp(
        title: STR_COMMON.APP_NAME,
        theme: theme,
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        initialRoute: splash,
        getPages: NavRouter.generateRoute,
      ),
    );
  }
}
