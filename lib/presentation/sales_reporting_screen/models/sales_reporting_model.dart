import 'package:get/get.dart';
import 'listitemcounter_item_model.dart';

class SalesReportingModel {
  Rx<List<ListitemcounterItemModel>> listitemcounterItemList =
      Rx(List.generate(8, (index) => ListitemcounterItemModel()));
}
