
import 'package:bmob_plugin/bmob/sdk/sdk.dart';
import 'package:bmob_plugin/bmob/table/tables.dart';
import 'package:bmob_plugin/bmob_plugin.dart';

class BmobInstallationManager {
  //TODO 获取android installationId
  static Future<String> getInstallationId() async {
    var installationId = await BmobPlugin.installationId;
    return installationId;
  }

  //TODO 初始化设备信息
  static Future<BmobInstallation> init() async {
    String installationId = await getInstallationId();
    BmobQuery<BmobInstallation> bmobQuery = BmobQuery();
    bmobQuery.addWhereEqualTo("installationId", installationId);

    List<dynamic> responseData = await bmobQuery.queryInstallations();
    List<BmobInstallation> installations =
        responseData.map((i) => BmobInstallation.fromJson(i)).toList();

    if (installations.isNotEmpty) {
      BmobInstallation installation = installations[0];
      return installation;
    } else {
      BmobInstallation bmobInstallation = BmobInstallation();
      bmobInstallation.installationId = installationId;
      bmobInstallation.save();
      return bmobInstallation;
    }
  }
}
