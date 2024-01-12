import '../controller/statistics_reports_controller.dart';
import '../models/listservices_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';

// ignore: must_be_immutable
class ListservicesItemWidget extends StatelessWidget {
  ListservicesItemWidget(this.listservicesItemModelObj);

  ListservicesItemModel listservicesItemModelObj;

  var controller = Get.find<StatisticsReportsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              listservicesItemModelObj.servicesTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyMedium14Bluegray400,
            ),
          ),
        ),
        Spacer(
          flex: 49,
        ),
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              listservicesItemModelObj.sharesTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyMedium14Bluegray400,
            ),
          ),
        ),
        Spacer(
          flex: 23,
        ),
        Padding(
          padding: getPadding(
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              listservicesItemModelObj.clicksTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyMedium14Bluegray400,
            ),
          ),
        ),
        Spacer(
          flex: 27,
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Obx(
            () => Text(
              listservicesItemModelObj.viralityTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyMedium14Bluegray400,
            ),
          ),
        ),
      ],
    );
  }
}
