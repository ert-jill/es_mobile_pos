import 'controller/offline_work_controller.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/app_bar/appbar_image.dart';
import 'package:pos/widgets/app_bar/appbar_title.dart';
import 'package:pos/widgets/app_bar/custom_app_bar.dart';

class OfflineWorkScreen extends GetWidget<OfflineWorkController> {
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
                      onTapArrowleft11();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_offline_work".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, right: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgMusic,
                          height: getVerticalSize(83),
                          width: getHorizontalSize(90)),
                      Padding(
                          padding: getPadding(top: 37),
                          child: Text("lbl_you_are_offline".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold24)),
                      Container(
                          width: getHorizontalSize(373),
                          margin: getMargin(top: 15, bottom: 5),
                          child: Text("msg_lorem_ipsum_dolor".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtGilroyMedium16Bluegray400))
                    ]))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}
