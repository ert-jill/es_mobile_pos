import '../controller/email_lists_controller.dart';
import 'package:get/get.dart';

class EmailListsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailListsController());
  }
}
