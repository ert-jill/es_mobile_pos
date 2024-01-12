import '../controller/elastic_search_controller.dart';
import 'package:get/get.dart';

class ElasticSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElasticSearchController());
  }
}
