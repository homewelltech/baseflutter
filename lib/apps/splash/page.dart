


import 'package:baseflutter/base/getx/repayment_base_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/screen_helper.dart';
import 'controller.dart';


class SplashPage extends BaseWidget<SplashController>{
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(411, 683));
    debugPrint("ScreenWith=${1.sw}  ScreenHeight=${1.sh}");
    ScreenHelper.removeSystemTransparent(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.w),
              child: Text("Hello Init App ",style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );




  }




}