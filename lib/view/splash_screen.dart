import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkmaze_practical/routers/router_constants.dart';
import 'package:monkmaze_practical/utility/constant_file.dart';
import 'package:monkmaze_practical/utility/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () async {
      Get.offAllNamed(friendsTabScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          STR_COMMON.APP_NAME,
          style: GoogleFonts.manrope(
            fontSize: FontSize.FONT_SIZE_20,
            fontWeight: FontWeight.w600,
            color: AppColors.BLACK,
          ),
        ),
      ),
    );
  }
}
