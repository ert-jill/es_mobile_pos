import '../controller/collect_transaction_fees_controller.dart';
import 'package:get/get.dart';

class CollectTransactionFeesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CollectTransactionFeesController());
  }
}
