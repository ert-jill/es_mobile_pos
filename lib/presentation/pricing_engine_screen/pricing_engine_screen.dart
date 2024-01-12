import '../pricing_engine_screen/widgets/pricingengine_item_widget.dart';
import 'controller/pricing_engine_controller.dart';
import 'models/pricingengine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/app_bar/appbar_image.dart';
import 'package:pos/widgets/app_bar/appbar_title.dart';
import 'package:pos/widgets/app_bar/custom_app_bar.dart';

class PricingEngineScreen extends GetWidget<PricingEngineController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 11),
                    onTap: () {
                      onTapArrowleft4();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_title".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 25, right: 16),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: controller.pricingEngineModelObj.value
                        .pricingengineItemList.value.length,
                    itemBuilder: (context, index) {
                      PricingengineItemModel model = controller
                          .pricingEngineModelObj
                          .value
                          .pricingengineItemList
                          .value[index];
                      return PricingengineItemWidget(model);
                    })))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
