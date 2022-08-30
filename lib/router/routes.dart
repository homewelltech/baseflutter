

import 'package:baseflutter/apps/myweb/home/footer/page.dart';
import 'package:baseflutter/router/data_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../apps/myweb/home/header/page.dart';
import '../apps/myweb/home/page.dart';
import '../apps/splash/page.dart';

abstract class Routes {


  //替换数据绑定页面
  static const String splashPage = '/splashPage';
  static const String myWebHeaderPage = "/myWeb/myWebHeaderPage";
  static const String myWebFooterPage = "/myWeb/myWebFooterPage";
  static const String myWebHomePage = "/myWeb/myWebHomePage";


  static final routePage = [
    //替换数据绑定页面
    GetPage(name: splashPage, page: () => const SplashPage(), binding: SplashBinding()),

    GetPage(name: myWebHeaderPage, page: () => const HeaderPageWidget(), binding: HeaderPageBinding()),
    GetPage(name: myWebFooterPage, page: () => const FooterPageWidget(), binding: FooterPageBinding()),
    GetPage(name: myWebHomePage, page: () => const HomePage(), binding: HomePageBinding()),


  ];
}

