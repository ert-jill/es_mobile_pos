import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/hamburger_menu_screen/models/hamburger_menu_model.dart';

class HamburgerMenuController extends GetxController {
  Rx<HamburgerMenuModel> hamburgerMenuModelObj = HamburgerMenuModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
