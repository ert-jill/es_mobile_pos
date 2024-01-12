import '../controller/xml_csv_template_builder_controller.dart';
import 'package:get/get.dart';

class XmlCsvTemplateBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => XmlCsvTemplateBuilderController());
  }
}
