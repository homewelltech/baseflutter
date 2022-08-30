import 'package:baseflutter/base/getx/repayment_base_common.dart';
import 'package:baseflutter/apps/myweb/home/controller.dart';
import 'package:baseflutter/apps/myweb/home/footer/page.dart';
import 'package:baseflutter/apps/myweb/home/header/page.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends BaseWidget<HomePageController>{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(child: Column(children:  [
      Expanded(child: HeaderPageWidget2()),
      Spacer(),
      // Expanded(child: FooterPageWidget()),
    ],),);
  }

}