
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

import '../../base/model/hive_message_model.dart';

///MessageBox
late Box hiveMessageModelBox;

///初始化Hive数据库


Future<void> InitHive() async {
  var databasePath = await getApplicationSupportDirectory();
  debugPrint("databasePath.path = ${databasePath.path}");
  await Hive.initFlutter('${databasePath.path}/data');

  Hive.registerAdapter(HiveMessageAdapter());

  hiveMessageModelBox = await Hive.openBox<HiveMessageModel>('hiveMessageModelBox');
}