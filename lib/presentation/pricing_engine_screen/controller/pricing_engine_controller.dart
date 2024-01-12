import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/pricing_engine_screen/models/pricing_engine_model.dart';

class PricingEngineController extends GetxController {
  Rx<PricingEngineModel> pricingEngineModelObj = PricingEngineModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
