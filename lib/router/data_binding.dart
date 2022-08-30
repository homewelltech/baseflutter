

import 'package:baseflutter/pages/myweb/home/controller.dart';
import 'package:baseflutter/pages/myweb/home/footer/controller.dart';
import 'package:baseflutter/pages/myweb/home/header/controller.dart';
import 'package:get/get.dart';

import '../pages/splash/controller.dart';




class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }

}

class HeaderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>HeaderPageController());
  }
}

class FooterPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>FooterPageController());
  }
}

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=>HomePageController());
  }
}