import 'package:baseflutter/base/getx/repayment_base_common.dart';
import 'package:flutter/cupertino.dart';

import 'controller.dart';

class FooterPageWidget extends BaseWidget<FooterPageController> {
  const FooterPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(child: Text(controller.footerName)),
          Expanded(child: Text(controller.footerIp)),
          Expanded(child: Text(controller.footerVersion)),
        ],
      ),
    );
  }
}
