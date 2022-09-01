import 'package:baseflutter/base/getx/repayment_base_common.dart';
import 'package:flutter/material.dart';
import 'package:tableview/tableview.dart';

import 'controller.dart';

class MyNoteMainPageWidget extends BaseWidget<MainPageController>{
  const MyNoteMainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white70,
      child:TableView(delegate: TableViewDelegate(),),
    );
  }

}