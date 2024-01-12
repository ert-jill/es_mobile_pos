import '../controller/print_controller.dart';
import 'package:get/get.dart';

class PrintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrintController());
  }
}
