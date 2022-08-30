import 'package:baseflutter/base/getx/repayment_base_common.dart';
import 'package:flutter/material.dart';
import 'package:link_scroll_menu/cc_menu.dart';

import 'controller.dart';

class MyNoteMainPageWidget extends BaseWidget<MainPageController>{
  const MyNoteMainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white70,
      child:CCMenuPage(
        menuList: controller.menuList,
        itemBuilder: (BuildContext context,int index){
          return Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 200,
            color: controller.colorList[index % controller.colorList.length],
            child: Text(controller.menuList[index],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          );
        },
      ),
    );
  }

}