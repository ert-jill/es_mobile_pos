import '../controller/pricing_engine_controller.dart';
import '../models/pricingengine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class PricingengineItemWidget extends StatelessWidget {
  PricingengineItemWidget(this.pricingengineItemModelObj);

  PricingengineItemModel pricingengineItemModelObj;

  var controller = Get.find<PricingEngineController>();

  SelectionPopupModel? selectedDropDownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 12,
      ),
      decoration: AppDecoration.outlineGray70011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashenrurz62wui86x861,
            height: getSize(
              86,
            ),
            width: getSize(
              86,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                3,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              204,
            ),
            margin: getMargin(
              left: 12,
              top: 8,
              bottom: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_logo_printed_t_shirt".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold16,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "lbl_prada".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium12,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Row(
                    children: [
                      CustomDropDown(
                        width: getHorizontalSize(
                          62,
                        ),
                        focusNode: FocusNode(),
                        icon: Container(
                          margin: getMargin(
                            right: 4,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown,
                          ),
                        ),
                        hintText: "lbl_size_m".tr,
                        items: pricingengineItemModelObj.dropdownItemList.value,
                        onChanged: (value) {
                          selectedDropDownValue = value;
                        },
                      ),
                      Container(
                        width: getHorizontalSize(
                          75,
                        ),
                        margin: getMargin(
                          left: 8,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.fillGray5002.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "lbl_color".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium12,
                            ),
                            Container(
                              height: getSize(
                                10,
                              ),
                              width: getSize(
                                10,
                              ),
                              margin: getMargin(
                                left: 4,
                                top: 3,
                                bottom: 3,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.deepPurple50,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    5,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.blueGray400,
                                  width: getHorizontalSize(
                                    1,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                              height: getSize(
                                16,
                              ),
                              width: getSize(
                                16,
                              ),
                              margin: getMargin(
                                left: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          51,
                        ),
                        margin: getMargin(
                          left: 8,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.txtFillGray5002.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder3,
                        ),
                        child: Text(
                          "lbl_qty_04".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyMedium12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              46,
            ),
            margin: getMargin(
              left: 24,
              top: 38,
              bottom: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_10_50".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium10.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "lbl_5_50".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyBold18BlueA700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
