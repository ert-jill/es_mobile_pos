import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/automated_email_sending_screen/models/automated_email_sending_model.dart';

class AutomatedEmailSendingController extends GetxController {
  Rx<AutomatedEmailSendingModel> automatedEmailSendingModelObj =
      AutomatedEmailSendingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
