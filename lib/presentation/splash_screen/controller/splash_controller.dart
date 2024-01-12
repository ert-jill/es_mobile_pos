import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.onboardingGuideScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
