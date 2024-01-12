import '../controller/elastic_search_controller.dart';
import '../models/listclose_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';

// ignore: must_be_immutable
class ListcloseItemWidget extends StatelessWidget {
  ListcloseItemWidget(this.listcloseItemModelObj);

  ListcloseItemModel listcloseItemModelObj;

  var controller = Get.find<ElasticSearchController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgClose,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 3,
            bottom: 1,
          ),
          child: Text(
            "lbl_lorem_ipsum".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroyMedium16,
          ),
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgClock,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
        ),
      ],
    );
  }
}
