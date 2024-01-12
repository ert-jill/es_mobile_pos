import 'package:get/get.dart';
import 'listtype_item_model.dart';

class ItemAvailabilityModel {
  Rx<List<ListtypeItemModel>> listtypeItemList =
      Rx(List.generate(2, (index) => ListtypeItemModel()));
}
