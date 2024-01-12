import '../controller/hamburger_menu_controller.dart';
import 'package:get/get.dart';

class HamburgerMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HamburgerMenuController());
  }
}
