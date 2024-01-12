import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/offline_work_screen/models/offline_work_model.dart';

class OfflineWorkController extends GetxController {
  Rx<OfflineWorkModel> offlineWorkModelObj = OfflineWorkModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
