import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/customised_order_status_screen/models/customised_order_status_model.dart';

class CustomisedOrderStatusController extends GetxController {
  Rx<CustomisedOrderStatusModel> customisedOrderStatusModelObj =
      CustomisedOrderStatusModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
