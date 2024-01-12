import '../controller/hamburger_menu_controller.dart';
import '../models/hamburgermenu_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';

// ignore: must_be_immutable
class HamburgermenuItemWidget extends StatelessWidget {
  HamburgermenuItemWidget(this.hamburgermenuItemModelObj);

  HamburgermenuItemModel hamburgermenuItemModelObj;

  var controller = Get.find<HamburgerMenuController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgProfileimglarge50x501,
          height: getSize(
            50,
          ),
          width: getSize(
            50,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              25,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            122,
          ),
          margin: getMargin(
            left: 16,
            top: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  hamburgermenuItemModelObj.friendsGroupTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold18Bluegray900,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Obx(
                    () => Text(
                      hamburgermenuItemModelObj.landonMosbyHiiiiTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyRegular14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: getHorizontalSize(
            61,
          ),
          margin: getMargin(
            top: 2,
            bottom: 3,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  hamburgermenuItemModelObj.timeTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyRegular14,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgVolumemuteoutline,
                height: getSize(
                  16,
                ),
                width: getSize(
                  16,
                ),
                margin: getMargin(
                  top: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
