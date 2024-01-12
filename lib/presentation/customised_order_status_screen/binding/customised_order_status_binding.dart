import '../controller/customised_order_status_controller.dart';
import 'package:get/get.dart';

class CustomisedOrderStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CustomisedOrderStatusController());
  }
}
