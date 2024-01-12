import '../email_lists_screen/widgets/emaillists_item_widget.dart';
import 'controller/email_lists_controller.dart';
import 'models/emaillists_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/app_bar/appbar_image.dart';
import 'package:pos/widgets/app_bar/appbar_title.dart';
import 'package:pos/widgets/app_bar/custom_app_bar.dart';
import 'package:pos/widgets/custom_floating_button.dart';
import 'package:pos/widgets/custom_icon_button.dart';
import 'package:pos/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class EmailListsScreen extends GetWidget<EmailListsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              top: 12,
              bottom: 12,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_email_lists".tr,
          ),
          actions: [
            CustomIconButton(
              height: 36,
              width: 36,
              margin: getMargin(
                left: 16,
                top: 6,
                right: 16,
                bottom: 6,
              ),
              variant: IconButtonVariant.FillBlueA700,
              shape: IconButtonShape.CircleBorder18,
              padding: IconButtonPadding.PaddingAll8,
              child: CustomImageView(
                svgPath: ImageConstant.imgYh,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                focusNode: FocusNode(),
                controller: controller.inputFieldController,
                hintText: "msg_search_in_emails".tr,
                margin: getMargin(
                  left: 16,
                  top: 25,
                  right: 16,
                ),
                prefix: Container(
                  margin: getMargin(
                    left: 12,
                    top: 12,
                    right: 8,
                    bottom: 12,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearchBlueGray200,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    44,
                  ),
                ),
                suffix: Container(
                  margin: getMargin(
                    left: 30,
                    top: 12,
                    right: 12,
                    bottom: 12,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgMicrophone,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    44,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 26,
                  ),
                  child: Text(
                    "lbl_all_mails".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium14,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 17,
                  right: 16,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          24,
                        ),
                      );
                    },
                    itemCount: controller.emailListsModelObj.value
                        .emaillistsItemList.value.length,
                    itemBuilder: (context, index) {
                      EmaillistsItemModel model = controller.emailListsModelObj
                          .value.emaillistsItemList.value[index];
                      return EmaillistsItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 50,
          width: 50,
          child: CustomImageView(
            svgPath: ImageConstant.imgEdit,
            height: getVerticalSize(
              25.0,
            ),
            width: getHorizontalSize(
              25.0,
            ),
          ),
        ),
      ),
    );
  }
}
