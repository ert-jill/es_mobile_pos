import 'package:pos/core/app_export.dart';
import 'package:pos/presentation/xml_csv_template_builder_screen/models/xml_csv_template_builder_model.dart';

class XmlCsvTemplateBuilderController extends GetxController {
  Rx<XmlCsvTemplateBuilderModel> xmlCsvTemplateBuilderModelObj =
      XmlCsvTemplateBuilderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
