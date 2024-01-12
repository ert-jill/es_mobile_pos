import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/email_lists_screen/models/email_lists_model.dart';
import 'package:flutter/material.dart';

class EmailListsController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<EmailListsModel> emailListsModelObj = EmailListsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
  }
}
