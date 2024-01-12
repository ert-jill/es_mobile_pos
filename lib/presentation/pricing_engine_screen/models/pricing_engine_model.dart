import 'package:get/get.dart';
import 'pricingengine_item_model.dart';

class PricingEngineModel {
  Rx<List<PricingengineItemModel>> pricingengineItemList =
      Rx(List.generate(6, (index) => PricingengineItemModel()));
}
