import '../controller/sales_reporting_controller.dart';
import 'package:get/get.dart';

class SalesReportingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesReportingController());
  }
}
