import 'package:baseflutter/apps/splash/page.dart';
import 'package:baseflutter/router/data_binding.dart';
import 'package:baseflutter/router/routes.dart';
import 'package:baseflutter/utils/db/db_util.dart';
import 'package:baseflutter/utils/injection_init.dart';
import 'package:baseflutter/utils/keyboard_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  // await InitHive();  //数据库不支持web

  var then = SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {

    var allRoutes=Routes.routePage;


    runApp(GetMaterialApp(
      getPages: allRoutes,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      builder: (context, child) => Scaffold(
        // Global GestureDetector that will dismiss the keyboard
        body: GestureDetector(
          onTap: () {
            KeyboardUtils.hideKeyboard(context);
          },
          child: child,
        ),
      ),
      defaultTransition: Transition.rightToLeft,//默认转场动画
      initialBinding: SplashBinding(),
      home: const SplashPage(),
    ));
  });
}
