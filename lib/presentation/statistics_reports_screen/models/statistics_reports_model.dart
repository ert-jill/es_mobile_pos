import 'package:get/get.dart';
import 'listservices_item_model.dart';

class StatisticsReportsModel {
  Rx<List<ListservicesItemModel>> listservicesItemList =
      Rx(List.generate(6, (index) => ListservicesItemModel()));
}
