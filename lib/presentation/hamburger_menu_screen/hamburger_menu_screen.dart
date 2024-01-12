import '../hamburger_menu_screen/widgets/hamburgermenu_item_widget.dart';
import 'controller/hamburger_menu_controller.dart';
import 'models/hamburgermenu_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/app_bar/appbar_image.dart';
import 'package:pos/widgets/app_bar/appbar_title.dart';
import 'package:pos/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HamburgerMenuScreen extends GetWidget<HamburgerMenuController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            49,
          ),
          leadingWidth: 40,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 16,
              top: 13,
              bottom: 12,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_media".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgSearchBlueGray900,
              margin: getMargin(
                left: 16,
                top: 13,
                right: 12,
              ),
            ),
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgOverflowmenu,
              margin: getMargin(
                left: 16,
                top: 13,
                right: 28,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: getPadding(
            left: 16,
            top: 25,
            right: 16,
          ),
          child: Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: getVerticalSize(
                    17,
                  ),
                );
              },
              itemCount: controller.hamburgerMenuModelObj.value
                  .hamburgermenuItemList.value.length,
              itemBuilder: (context, index) {
                HamburgermenuItemModel model = controller.hamburgerMenuModelObj
                    .value.hamburgermenuItemList.value[index];
                return HamburgermenuItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
