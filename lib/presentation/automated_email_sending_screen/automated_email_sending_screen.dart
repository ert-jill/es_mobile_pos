import 'controller/automated_email_sending_controller.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';

class AutomatedEmailSendingScreen
    extends GetWidget<AutomatedEmailSendingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 13, right: 16, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Text("lbl_sayitnow".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold20)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("msg_automated_reminder".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray400)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("msg_may_20_2021_at".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray400)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              width: getHorizontalSize(396),
                              margin: getMargin(top: 26, bottom: 5),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.fillBlue5001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getSize(45),
                                              margin: getMargin(bottom: 23),
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 10,
                                                  right: 16,
                                                  bottom: 10),
                                              decoration: AppDecoration
                                                  .txtOutlineWhiteA700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder22),
                                              child: Text("lbl_s".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroySemiBold20WhiteA700)),
                                          Container(
                                              width: getHorizontalSize(136),
                                              margin:
                                                  getMargin(left: 8, top: 3),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_sayitnow_gmail_com"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroySemiBold14),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Text(
                                                            "lbl_sayitnow".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroyMedium12)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Row(children: [
                                                          Text("lbl_3_49_pm".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyMedium12),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowdownBlueGray400,
                                                              height:
                                                                  getSize(16),
                                                              width:
                                                                  getSize(16),
                                                              margin: getMargin(
                                                                  left: 4))
                                                        ]))
                                                  ]))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 25),
                                        child: Text("lbl_hello_users".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyMedium16)),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Text("msg_subscriber_id".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyMedium16)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCut,
                                        height: getSize(33),
                                        width: getSize(33),
                                        alignment: Alignment.center,
                                        margin: getMargin(top: 28)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(top: 11),
                                            child: Text("lbl_say_it_now2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtJosefinSansRegular20))),
                                    Container(
                                        width: getHorizontalSize(338),
                                        margin: getMargin(top: 25, right: 25),
                                        child: Text("msg_your_payment_of".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyMedium14)),
                                    Container(
                                        width: getHorizontalSize(355),
                                        margin: getMargin(top: 20, right: 8),
                                        child: Text("msg_please_recharge".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyMedium14)),
                                    Padding(
                                        padding: getPadding(top: 19),
                                        child: Text("lbl_thank_you2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyMedium14))
                                  ])))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
