import '../controller/customised_order_status_controller.dart';
import '../models/listunsplashenrurz62wui_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';

// ignore: must_be_immutable
class Listunsplashenrurz62wuiItemWidget extends StatelessWidget {
  Listunsplashenrurz62wuiItemWidget(this.listunsplashenrurz62wuiItemModelObj);

  Listunsplashenrurz62wuiItemModel listunsplashenrurz62wuiItemModelObj;

  var controller = Get.find<CustomisedOrderStatusController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 17,
          right: 16,
          bottom: 17,
        ),
        decoration: AppDecoration.outlineGray70011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                right: 13,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUnsplashenrurz62wui50x50,
                    height: getSize(
                      50,
                    ),
                    width: getSize(
                      50,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        3,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      147,
                    ),
                    margin: getMargin(
                      left: 8,
                      top: 3,
                      bottom: 1,
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
                            "lbl_qty_01".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyRegular14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: getPadding(
                      top: 15,
                      bottom: 14,
                    ),
                    child: Text(
                      "lbl_pending".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyBold16Amber500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 17,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.blueGray100,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_order_id".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16Bluegray400,
                  ),
                  Text(
                    "lbl_21204034879".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_order_by".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16Bluegray400,
                  ),
                  Text(
                    "lbl_angelyn_weiner2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_date".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyMedium16Bluegray400,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 1,
                    ),
                    child: Text(
                      "lbl_april_30_2022".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyMedium16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_total_paid".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16Bluegray400,
                  ),
                  Text(
                    "lbl_9_97".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 14,
                bottom: 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 50,
                    ),
                    child: Text(
                      "msg_delivery_address".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyMedium16Bluegray400,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      159,
                    ),
                    child: Text(
                      "msg_4517_washington".tr,
                      maxLines: null,
                      textAlign: TextAlign.right,
                      style: AppStyle.txtGilroyMedium16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
