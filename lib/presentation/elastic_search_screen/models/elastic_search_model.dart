import 'package:get/get.dart';
import 'listpic_item_model.dart';
import 'listclose_item_model.dart';

class ElasticSearchModel {
  Rx<List<ListpicItemModel>> listpicItemList =
      Rx(List.generate(5, (index) => ListpicItemModel()));

  Rx<List<ListcloseItemModel>> listcloseItemList =
      Rx(List.generate(5, (index) => ListcloseItemModel()));
}
