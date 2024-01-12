import '../controller/statistics_reports_controller.dart';
import 'package:get/get.dart';

class StatisticsReportsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StatisticsReportsController());
  }
}
