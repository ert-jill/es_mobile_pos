import 'controller/xml_csv_template_builder_controller.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/custom_button.dart';

class XmlCsvTemplateBuilderScreen
    extends GetWidget<XmlCsvTemplateBuilderController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 19, right: 16, bottom: 19),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 22, top: 26, right: 22, bottom: 26),
                              decoration: AppDecoration.outlineBlue200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVscodeiconsfiletypeexcel,
                                              height: getSize(58),
                                              width: getSize(58)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 17,
                                                  bottom: 18),
                                              child: Text("lbl_excel".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroySemiBold18Bluegray900))
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 26),
                                        child: Text("msg_xml_csv_template".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGilroySemiBold18Bluegray900)),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(
                                                top: 26, right: 1, bottom: 14),
                                            padding: getPadding(
                                                left: 102,
                                                top: 15,
                                                right: 102,
                                                bottom: 15),
                                            decoration: AppDecoration
                                                .outlineBlueA7001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder6),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFile26x26,
                                                      height: getSize(26),
                                                      width: getSize(26)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 15),
                                                      child: Text(
                                                          "msg_add_a_file_here"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtGilroyMedium18Bluegray600)),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(34),
                                                      width:
                                                          getHorizontalSize(96),
                                                      text: "lbl_upload".tr,
                                                      margin:
                                                          getMargin(top: 15),
                                                      variant: ButtonVariant
                                                          .OutlineBlueA700,
                                                      padding: ButtonPadding
                                                          .PaddingT7,
                                                      fontStyle: ButtonFontStyle
                                                          .GilroyMedium14BlueA700,
                                                      prefixWidget: Container(
                                                          margin: getMargin(
                                                              right: 8),
                                                          child: CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgUpload)))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 10, bottom: 7),
                                    child: SizedBox(
                                        width: getHorizontalSize(167),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray100))),
                                Text("lbl_or".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyRegular16Bluegray400),
                                Padding(
                                    padding: getPadding(top: 10, bottom: 7),
                                    child: SizedBox(
                                        width: getHorizontalSize(167),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray100)))
                              ])),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_choose_a_file".tr,
                          margin: getMargin(top: 28, bottom: 5))
                    ]))));
  }
}
