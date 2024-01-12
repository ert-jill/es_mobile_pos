import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/custom_form_screen/models/custom_form_model.dart';
import 'package:flutter/material.dart';

class CustomFormController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  TextEditingController inputFieldTwoController = TextEditingController();

  TextEditingController inputFieldThreeController = TextEditingController();

  TextEditingController inputFieldFourController = TextEditingController();

  TextEditingController inputFieldFiveController = TextEditingController();

  Rx<CustomFormModel> customFormModelObj = CustomFormModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    inputFieldOneController.dispose();
    inputFieldTwoController.dispose();
    inputFieldThreeController.dispose();
    inputFieldFourController.dispose();
    inputFieldFiveController.dispose();
  }
}
