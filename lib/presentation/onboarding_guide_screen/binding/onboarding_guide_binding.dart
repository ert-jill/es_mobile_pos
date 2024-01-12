import '../controller/onboarding_guide_controller.dart';
import 'package:get/get.dart';

class OnboardingGuideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingGuideController());
  }
}
