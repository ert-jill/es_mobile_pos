import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/collect_transaction_fees_screen/models/collect_transaction_fees_model.dart';

class CollectTransactionFeesController extends GetxController {
  Rx<CollectTransactionFeesModel> collectTransactionFeesModelObj =
      CollectTransactionFeesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
