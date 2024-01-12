import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/statistics_reports_screen/models/statistics_reports_model.dart';

class StatisticsReportsController extends GetxController {
  Rx<StatisticsReportsModel> statisticsReportsModelObj =
      StatisticsReportsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
