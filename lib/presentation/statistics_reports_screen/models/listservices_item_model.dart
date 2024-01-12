import 'package:get/get.dart';

class ListservicesItemModel {
  Rx<String> servicesTxt = Rx("Services");

  Rx<String> sharesTxt = Rx("Shares");

  Rx<String> clicksTxt = Rx("Clicks");

  Rx<String> viralityTxt = Rx("Virality");

  Rx<String>? id = Rx("");
}
