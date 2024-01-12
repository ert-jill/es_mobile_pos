import 'controller/open_api_controller.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class OpenApiDialog extends StatelessWidget {
  OpenApiDialog(this.controller);

  OpenApiController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(316),
        padding: getPadding(left: 13, top: 16, right: 13, bottom: 16),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: getPadding(top: 5),
                  child: Text("lbl_open_api".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyMedium18BlueA700)),
              Container(
                  width: getHorizontalSize(237),
                  margin: getMargin(left: 22, top: 12, right: 29),
                  child: Text("msg_access_publicly".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtGilroyRegular14Bluegray900)),
              Padding(
                  padding: getPadding(top: 23, right: 6),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomButton(
                                height: getVerticalSize(34),
                                text: "lbl_cancel".tr,
                                margin: getMargin(right: 8),
                                variant: ButtonVariant.OutlineBlueA700,
                                padding: ButtonPadding.PaddingAll6,
                                fontStyle:
                                    ButtonFontStyle.GilroyMedium16BlueA700,
                                onTap: () {
                                  onTapCancel();
                                })),
                        Expanded(
                            child: CustomButton(
                                height: getVerticalSize(34),
                                text: "lbl_sign_in".tr,
                                margin: getMargin(left: 8),
                                padding: ButtonPadding.PaddingAll6,
                                fontStyle: ButtonFontStyle.GilroyMedium14))
                      ]))
            ]));
  }

  onTapCancel() {
    Get.back();
  }
}
