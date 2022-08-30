

import 'dart:async';

import 'package:baseflutter/base/getx/repayment_base_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../router/routes.dart';

class SplashController extends BaseGetController{
  int splashTime = 2;
  late Timer timer;

  @override
  void onReady() {
    debugPrint("SplashController => onReady");
    super.onReady();

    timer=Timer.periodic(const Duration(seconds: 1), (sd) {
      splashTime-=1;
      debugPrint("秒：$splashTime");

      if(splashTime<=0){
        timer.cancel();

        Get.offNamed(Routes.myNoteMainPage);



      }
    });
  }


  @override
  void onClose() {
    super.onClose();
    debugPrint("SplashController => onClose");
    timer.cancel();
  }



}