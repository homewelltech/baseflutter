import 'package:flutter/cupertino.dart';

import '../../../../base/getx/repayment_base_common.dart';
import 'controller.dart';

class HeaderPageWidget extends BaseWidget<HeaderPageController> {
  const HeaderPageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:  [
          Expanded(child: Text(controller.navCompanyName)),
          Expanded(child: Text(controller.navHome)),
          Expanded(child: Text(controller.navNew)),
          Expanded(child: Text(controller.navContact)),
        ],
      ),
    );
  }
}


class HeaderPageWidget2 extends StatefulWidget {
  const HeaderPageWidget2({super.key});



  @override
  State<StatefulWidget> createState() {

    return HeaderPageState();
  }
}

class HeaderPageState extends State<HeaderPageWidget2>{
  @override
  Widget build(BuildContext context) {

    var navCompanyName="家艺馨科技（深圳）有限公司";
    var navHome="主页";
    var navProduct="产品展示";
    var navNew="新闻提要";
    var navContact="联系我们";

    return Container(
      child: Row(
        children:  [
          Expanded(child: Text(navCompanyName)),
          Expanded(child: Text(navHome)),
          Expanded(child: Text(navNew)),
          Expanded(child: Text(navContact)),
        ],
      ),
    );
  }

}
