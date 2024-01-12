import '../sales_reporting_screen/widgets/listitemcounter_item_widget.dart';
import 'controller/sales_reporting_controller.dart';
import 'models/listitemcounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/app_bar/appbar_image.dart';
import 'package:pos/widgets/app_bar/appbar_title.dart';
import 'package:pos/widgets/app_bar/custom_app_bar.dart';

class SalesReportingScreen extends GetWidget<SalesReportingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 17),
                    onTap: () {
                      onTapArrowleft8();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_sales_reporting".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 23, right: 15, bottom: 23),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_total_revenue".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyRegular14Gray90002),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_61034_50".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyBold36),
                                Container(
                                    margin: getMargin(top: 10, bottom: 9),
                                    decoration: AppDecoration.fillRed700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownWhiteA700,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              top: 4, right: 8, bottom: 4),
                                          child: Text("lbl_2_28".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium12WhiteA700))
                                    ]))
                              ])),
                      Container(
                          margin: getMargin(top: 31, right: 1),
                          padding: getPadding(top: 8, bottom: 8),
                          decoration: AppDecoration.fillBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    width: getHorizontalSize(38),
                                    padding: getPadding(
                                        left: 8, top: 6, right: 8, bottom: 6),
                                    decoration: AppDecoration.txtFillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder3),
                                    child: Text("lbl_24h".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium12Gray90002)),
                                Container(
                                    width: getHorizontalSize(33),
                                    padding: getPadding(
                                        left: 8, top: 6, right: 8, bottom: 6),
                                    decoration: AppDecoration.txtFillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder3),
                                    child: Text("lbl_1w".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium12Gray90002)),
                                Container(
                                    width: getHorizontalSize(30),
                                    padding: getPadding(
                                        left: 8, top: 6, right: 8, bottom: 6),
                                    decoration: AppDecoration.txtFillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder3),
                                    child: Text("lbl_1m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium12Gray90002)),
                                Container(
                                    width: getHorizontalSize(33),
                                    padding: getPadding(
                                        left: 8, top: 6, right: 8, bottom: 6),
                                    decoration: AppDecoration.txtFillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder3),
                                    child: Text("lbl_3m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium12Gray90002)),
                                Container(
                                    width: getHorizontalSize(33),
                                    padding: getPadding(
                                        left: 8, top: 6, right: 8, bottom: 6),
                                    decoration: AppDecoration.txtFillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder3),
                                    child: Text("lbl_6m".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium12Gray90002)),
                                Container(
                                    width: getHorizontalSize(29),
                                    padding: getPadding(
                                        left: 8, top: 6, right: 8, bottom: 6),
                                    decoration: AppDecoration.txtFillBlueA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder3),
                                    child: Text("lbl_1y".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyBold12)),
                                Container(
                                    width: getHorizontalSize(59),
                                    padding: getPadding(
                                        left: 8, top: 6, right: 8, bottom: 6),
                                    decoration: AppDecoration.txtFillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder3),
                                    child: Text("lbl_all_time".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium12Gray90002))
                              ])),
                      Container(
                          height: getVerticalSize(218),
                          width: getHorizontalSize(393),
                          margin: getMargin(left: 3, top: 8),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: getVerticalSize(218),
                                    width: getHorizontalSize(329),
                                    margin: getMargin(right: 13),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height: getVerticalSize(
                                                            200),
                                                        child: VerticalDivider(
                                                            width:
                                                                getHorizontalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_2022".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroySemiBold10Gray90002))
                                                  ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                20),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          right:
                                                                              9),
                                                                  child: SizedBox(
                                                                      height:
                                                                          getVerticalSize(
                                                                              200),
                                                                      child: VerticalDivider(
                                                                          width: getHorizontalSize(
                                                                              1),
                                                                          thickness:
                                                                              getVerticalSize(1)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_2021"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroySemiBold10Gray90002))
                                                            ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                23),
                                                        margin:
                                                            getMargin(left: 22),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          200),
                                                                  child: VerticalDivider(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_2020"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroySemiBold10Gray90002))
                                                            ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                21),
                                                        margin:
                                                            getMargin(left: 21),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          200),
                                                                  child: VerticalDivider(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_2019"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroySemiBold10Gray90002))
                                                            ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                21),
                                                        margin:
                                                            getMargin(left: 22),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          200),
                                                                  child: VerticalDivider(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_2018"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroySemiBold10Gray90002))
                                                            ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                20),
                                                        margin:
                                                            getMargin(left: 23),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          200),
                                                                  child: VerticalDivider(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_2017"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroySemiBold10Gray90002))
                                                            ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                21),
                                                        margin:
                                                            getMargin(left: 23),
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          200),
                                                                  child: VerticalDivider(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_2016"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroySemiBold10Gray90002))
                                                            ]))
                                                  ])),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height: getVerticalSize(
                                                            200),
                                                        child: VerticalDivider(
                                                            width:
                                                                getHorizontalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_2015".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroySemiBold10Gray90002))
                                                  ])),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorBlueA700,
                                              height: getVerticalSize(130),
                                              width: getHorizontalSize(302),
                                              alignment: Alignment.bottomCenter,
                                              margin: getMargin(bottom: 32))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(right: 1),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_6000".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyBold10),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 7, bottom: 5),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                349),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .blueGray300)))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(top: 19, right: 1),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_5000".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyBold10),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 7, bottom: 5),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                349),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .blueGray300)))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(top: 19, right: 2),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_4000".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyBold10),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 7, bottom: 5),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                348),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .blueGray300)))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(top: 19, right: 1),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_3000".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyBold10),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 7, bottom: 5),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                349),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .blueGray300)))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(top: 19, right: 1),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_2000".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyBold10),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 7, bottom: 5),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                349),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .blueGray300)))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 19),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_1000".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyBold10),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 7, bottom: 5),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                350),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .blueGray300)))
                                              ]))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_dimension".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyMedium16Bluegray400),
                                Text("lbl_sale".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyMedium16Bluegray400)
                              ])),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(21));
                              },
                              itemCount: controller.salesReportingModelObj.value
                                  .listitemcounterItemList.value.length,
                              itemBuilder: (context, index) {
                                ListitemcounterItemModel model = controller
                                    .salesReportingModelObj
                                    .value
                                    .listitemcounterItemList
                                    .value[index];
                                return ListitemcounterItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
