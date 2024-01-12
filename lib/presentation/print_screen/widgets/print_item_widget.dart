import '../controller/print_controller.dart';
import '../models/print_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';

// ignore: must_be_immutable
class PrintItemWidget extends StatelessWidget {
  PrintItemWidget(this.printItemModelObj);

  PrintItemModel printItemModelObj;

  var controller = Get.find<PrintController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgFile,
          height: getSize(
            30,
          ),
          width: getSize(
            30,
          ),
          margin: getMargin(
            bottom: 20,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
            top: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  printItemModelObj.weburlTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  "msg_03_04_2021_7_5".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyRegular14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
