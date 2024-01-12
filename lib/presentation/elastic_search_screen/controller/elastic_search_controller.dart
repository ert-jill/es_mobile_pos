import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/elastic_search_screen/models/elastic_search_model.dart';
import 'package:flutter/material.dart';

class ElasticSearchController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<ElasticSearchModel> elasticSearchModelObj = ElasticSearchModel().obs;

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
