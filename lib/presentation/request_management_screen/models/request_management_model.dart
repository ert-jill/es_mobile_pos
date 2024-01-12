import 'package:get/get.dart';
import 'listitemname_item_model.dart';

class RequestManagementModel {
  Rx<List<ListitemnameItemModel>> listitemnameItemList =
      Rx(List.generate(5, (index) => ListitemnameItemModel()));
}
