import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/item_availability_screen/models/item_availability_model.dart';
import 'package:flutter/material.dart';

class ItemAvailabilityController extends GetxController {
  TextEditingController languageController = TextEditingController();

  Rx<ItemAvailabilityModel> itemAvailabilityModelObj =
      ItemAvailabilityModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
  }
}
