import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p01/utils/global.colors.dart';
import 'package:p01/view/login.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Image.asset('assets/images/logo.png'),
        )
      ),
    );
  }
}