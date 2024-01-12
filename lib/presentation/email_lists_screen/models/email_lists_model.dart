import 'package:get/get.dart';
import 'emaillists_item_model.dart';

class EmailListsModel {
  Rx<List<EmaillistsItemModel>> emaillistsItemList =
      Rx(List.generate(9, (index) => EmaillistsItemModel()));
}
