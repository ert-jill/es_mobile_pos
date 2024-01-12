import 'package:get/get.dart';
import 'hamburgermenu_item_model.dart';

class HamburgerMenuModel {
  Rx<List<HamburgermenuItemModel>> hamburgermenuItemList =
      Rx(List.generate(12, (index) => HamburgermenuItemModel()));
}
