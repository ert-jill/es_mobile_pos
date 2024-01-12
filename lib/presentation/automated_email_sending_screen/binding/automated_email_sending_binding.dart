import '../controller/automated_email_sending_controller.dart';
import 'package:get/get.dart';

class AutomatedEmailSendingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AutomatedEmailSendingController());
  }
}
