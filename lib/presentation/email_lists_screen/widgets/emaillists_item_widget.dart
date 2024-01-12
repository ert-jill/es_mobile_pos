import '../controller/email_lists_controller.dart';
import '../models/emaillists_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class EmaillistsItemWidget extends StatelessWidget {
  EmaillistsItemWidget(this.emaillistsItemModelObj);

  EmaillistsItemModel emaillistsItemModelObj;

  var controller = Get.find<EmailListsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 50,
          width: 50,
          margin: getMargin(
            bottom: 11,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgComputer,
          ),
        ),
        Container(
          width: getHorizontalSize(
            241,
          ),
          margin: getMargin(
            left: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  241,
                ),
                child: Text(
                  "msg_lorem_ipsum_dolor2".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Text(
                  "msg_lorem_ipsum_dolor3".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyRegular14,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          width: getHorizontalSize(
            44,
          ),
          margin: getMargin(
            top: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_21_may".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroyBold14,
              ),
              CustomImageView(
                svgPath: ImageConstant.imgStar2,
                height: getSize(
                  20,
                ),
                width: getSize(
                  20,
                ),
                margin: getMargin(
                  top: 21,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
