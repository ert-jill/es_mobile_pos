import '../controller/elastic_search_controller.dart';
import '../models/listpic_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';

// ignore: must_be_immutable
class ListpicItemWidget extends StatelessWidget {
  ListpicItemWidget(this.listpicItemModelObj);

  ListpicItemModel listpicItemModelObj;

  var controller = Get.find<ElasticSearchController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPic2,
          height: getSize(
            44,
          ),
          width: getSize(
            44,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              22,
            ),
          ),
          margin: getMargin(
            top: 1,
            bottom: 5,
          ),
        ),
        Container(
          width: getHorizontalSize(
            99,
          ),
          margin: getMargin(
            left: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listpicItemModelObj.senderTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold18Bluegray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Obx(
                  () => Text(
                    listpicItemModelObj.typeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyRegular14Bluegray300,
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 2,
            bottom: 31,
          ),
          child: Obx(
            () => Text(
              listpicItemModelObj.febCounterTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyRegular14Bluegray300,
            ),
          ),
        ),
      ],
    );
  }
}
