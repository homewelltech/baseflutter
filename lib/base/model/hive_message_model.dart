
import 'package:hive/hive.dart';

import '../../utils/db/db_util.dart';
@HiveType(typeId: 1)
class HiveMessageModel extends HiveObject {
  static const String STATUS_UNREAD = "0";
  static const String STATUS_READ = "1";
  static const String SYSTEM_MSG_FROM_POLLING = "0";
  static const String SYSTEM_MSG_FROM_PUSH = "1";
  static const String TYPE_SYSTEM_REPAY = "2"; //系统消息，还款
  static const String TYPE_INCOME_SYSTEM = "3"; //其它系统消息
  static const String TYPE_SYSTEM_WEEK_QUOTA = "4"; //周领取额度
  static const String TYPE_SYSTEM_INNER_QUOTA = "5"; //内部调整额度
  static const String TYPE_SYSTEM_WEEK_QUOTA_NOTIFY = "6"; //周领取额度通知

  ///uid
  @HiveField(0)
  String uid = "";
  ///消息类型
  @HiveField(1)
  String? messageType = "";
  ///消息内容
  @HiveField(2)
  String? content = "";
  ///发消息主体名字
  String? name = "";
  ///发送或接收时间戳
  int messageTimestamp = 0;
  ///写入本地数据时间戳
  int writeTimestamp = 0;
  ///消息状态
  String messageStatus = STATUS_READ;
  ///系统消息id
  String? systemMessageId = "";
  ///系统消息来源
  String? systemMessageFrom = "";
  ///跳转路径
  String? jumpLink = "";
  ///跳转方式
  String? jumpType = "";
  String? templateId = "";
  ///消息名称
  String? title = "";
  ///消息push类型
  String? messagePushType = "";
  ///图片地址
  String? pictureUrl = "";

  HiveMessageModel({
    this.uid ="",
    this.messageType = "",
    this.content = "",
    this.name = "",
    this.messageTimestamp = 0,
    this.writeTimestamp = 0,
    this.messageStatus = STATUS_READ,
    this.systemMessageId = "",
    this.systemMessageFrom = "",
    this.jumpLink = "",
    this.jumpType = "",
    this.templateId = "",
    this.title = "",
    this.messagePushType = "",
    this.pictureUrl = "",
  });
}

class HiveMessageAdapter extends TypeAdapter<HiveMessageModel> {
  @override
  HiveMessageModel read(BinaryReader reader) {
    return HiveMessageModel(
      uid: reader.read(),
      messageType: reader.read(),
      content: reader.read(),
      name: reader.read(),
      messageTimestamp: reader.read(),
      writeTimestamp: reader.read(),
      messageStatus: reader.read(),
      systemMessageId: reader.read(),
      systemMessageFrom: reader.read(),
      jumpLink: reader.read(),
      jumpType: reader.read(),
      templateId: reader.read(),
      title: reader.read(),
      messagePushType: reader.read(),
      pictureUrl: reader.read()
    );
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, HiveMessageModel obj) {
    writer.write(obj.uid);
    writer.write(obj.messageType);
    writer.write(obj.content);
    writer.write(obj.name);
    writer.write(obj.messageTimestamp);
    writer.write(obj.writeTimestamp);
    writer.write(obj.messageStatus);
    writer.write(obj.systemMessageId);
    writer.write(obj.systemMessageFrom);
    writer.write(obj.jumpLink);
    writer.write(obj.jumpType);
    writer.write(obj.templateId);
    writer.write(obj.title);
    writer.write(obj.messagePushType);
    writer.write(obj.pictureUrl);
  }
  
}

//新增或者更新
void messagePut(HiveMessageModel obj) {
  hiveMessageModelBox.put("${obj.systemMessageId}${obj.messagePushType}", obj);
}

HiveMessageModel? messageGetAt({int position = 0}){
  var message = hiveMessageModelBox.getAt(position);
  return message;
}

List<HiveMessageModel> messageGetList() {
  var res = hiveMessageModelBox.values.toList();
  List<HiveMessageModel> list = res.cast<HiveMessageModel>();
  return list;
}

void messageDelete(String key) {
  hiveMessageModelBox.delete(key);
}

Future<void> messageClear() async {
  await hiveMessageModelBox.clear();
}