import '../controller/pricing_engine_controller.dart';
import 'package:get/get.dart';

class PricingEngineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PricingEngineController());
  }
}
