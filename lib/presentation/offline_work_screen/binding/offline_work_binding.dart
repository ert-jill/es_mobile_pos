import '../controller/offline_work_controller.dart';
import 'package:get/get.dart';

class OfflineWorkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfflineWorkController());
  }
}
