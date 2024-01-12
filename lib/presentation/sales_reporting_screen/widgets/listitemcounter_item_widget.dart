import '../controller/sales_reporting_controller.dart';
import '../models/listitemcounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';

// ignore: must_be_immutable
class ListitemcounterItemWidget extends StatelessWidget {
  ListitemcounterItemWidget(this.listitemcounterItemModelObj);

  ListitemcounterItemModel listitemcounterItemModelObj;

  var controller = Get.find<SalesReportingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            listitemcounterItemModelObj.itemCounterTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroySemiBold16Black900,
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgChartsmicro,
          height: getVerticalSize(
            15,
          ),
          width: getHorizontalSize(
            83,
          ),
          margin: getMargin(
            top: 3,
            bottom: 2,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 22,
          ),
          child: Obx(
            () => Text(
              listitemcounterItemModelObj.priceTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroySemiBold16BlueA700,
            ),
          ),
        ),
      ],
    );
  }
}
