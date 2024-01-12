import 'package:get/get.dart';
import 'print_item_model.dart';

class PrintModel {
  Rx<List<PrintItemModel>> printItemList =
      Rx(List.generate(5, (index) => PrintItemModel()));
}
