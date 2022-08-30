import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BaseGetController extends GetxController {}


abstract class BaseWidget<T extends GetxController> extends StatefulWidget {
  const BaseWidget({Key? key}) : super(key: key);

  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);

  get partUpdateId => null; //部分更新

  @protected
  Widget build(BuildContext context);

  @override
  RefreshState createState() => RefreshState<T>();
}

class RefreshState<T extends GetxController>extends State<BaseWidget>{
  @override
  Widget build(BuildContext context) {

    return GetBuilder<T>(
        id: widget.partUpdateId,
        builder: (controller){ return widget.build(context);});
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<T>();
    super.dispose();
  }

}