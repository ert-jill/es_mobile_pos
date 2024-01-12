import '../elastic_search_screen/widgets/listclose_item_widget.dart';
import '../elastic_search_screen/widgets/listpic_item_widget.dart';
import 'controller/elastic_search_controller.dart';
import 'models/listclose_item_model.dart';
import 'models/listpic_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/widgets/app_bar/appbar_image.dart';
import 'package:pos/widgets/app_bar/appbar_title.dart';
import 'package:pos/widgets/app_bar/custom_app_bar.dart';
import 'package:pos/widgets/custom_search_view.dart';

class ElasticSearchScreen extends GetWidget<ElasticSearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 16, top: 10, right: 16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(28),
                                    leadingWidth: 40,
                                    leading: AppbarImage(
                                        height: getSize(24),
                                        width: getSize(24),
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(
                                            left: 16, top: 1, bottom: 2),
                                        onTap: () {
                                          onTapArrowleft5();
                                        }),
                                    centerTitle: true,
                                    title: AppbarTitle(text: "lbl_inbox".tr)),
                                Padding(
                                    padding: getPadding(top: 96),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(44),
                                              width: getSize(44),
                                              margin: getMargin(bottom: 3),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPic,
                                                        height: getSize(44),
                                                        width: getSize(44),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    22)),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                            height: getSize(10),
                                                            width: getSize(10),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .green600,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            5)),
                                                                border: Border.all(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1)))))
                                                  ])),
                                          Container(
                                              width: getHorizontalSize(115),
                                              margin: getMargin(left: 16),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_aspen_mango".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroySemiBold18Gray900),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle1,
                                                              height:
                                                                  getSize(16),
                                                              width:
                                                                  getSize(16),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          4)),
                                                              margin: getMargin(
                                                                  bottom: 1)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8),
                                                              child: Text(
                                                                  "lbl_photo"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGilroyRegular14Bluegray300))
                                                        ]))
                                                  ])),
                                          Spacer(),
                                          Container(
                                              width: getHorizontalSize(64),
                                              margin:
                                                  getMargin(top: 4, bottom: 5),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_5_min_ago".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium14Bluegray20001),
                                                    Container(
                                                        margin:
                                                            getMargin(top: 4),
                                                        padding: getPadding(
                                                            left: 5,
                                                            top: 1,
                                                            right: 5,
                                                            bottom: 1),
                                                        decoration: AppDecoration
                                                            .fillBlueA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder6),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                  padding: getPadding(
                                                                      bottom:
                                                                          1),
                                                                  child: Text(
                                                                      "lbl_4"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGilroySemiBold10))
                                                            ]))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 30),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPic44x44,
                                              height: getSize(44),
                                              width: getSize(44),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(22)),
                                              margin:
                                                  getMargin(top: 1, bottom: 4)),
                                          Container(
                                              width: getHorizontalSize(137),
                                              margin: getMargin(left: 16),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "lbl_emerson_herwitz"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroySemiBold18Bluegray900),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 11),
                                                        child: Text(
                                                            "msg_hello_how_are_you"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroyRegular14Bluegray300))
                                                  ])),
                                          Spacer(),
                                          Padding(
                                              padding: getPadding(
                                                  top: 3, bottom: 29),
                                              child: Text("lbl_15_min_ago".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyRegular14Bluegray300))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 28),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(44),
                                              width: getSize(44),
                                              margin:
                                                  getMargin(top: 1, bottom: 3),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPic1,
                                                        height: getSize(44),
                                                        width: getSize(44),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    22)),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                            height: getSize(10),
                                                            width: getSize(10),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .green600,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            5)),
                                                                border: Border.all(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1)))))
                                                  ])),
                                          Container(
                                              width: getHorizontalSize(95),
                                              margin: getMargin(left: 16),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_ruben_dias".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroySemiBold18Bluegray900),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: Row(children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle116x16,
                                                              height:
                                                                  getSize(16),
                                                              width:
                                                                  getSize(16),
                                                              radius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          4))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8),
                                                              child: Text(
                                                                  "lbl_photo"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGilroyRegular14Bluegray300))
                                                        ]))
                                                  ])),
                                          Spacer(),
                                          Padding(
                                              padding: getPadding(
                                                  top: 3, bottom: 28),
                                              child: Text("lbl_yesterday".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyRegular14Bluegray300))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 29),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(27));
                                        },
                                        itemCount: controller
                                            .elasticSearchModelObj
                                            .value
                                            .listpicItemList
                                            .value
                                            .length,
                                        itemBuilder: (context, index) {
                                          ListpicItemModel model = controller
                                              .elasticSearchModelObj
                                              .value
                                              .listpicItemList
                                              .value[index];
                                          return ListpicItemWidget(model);
                                        })))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 16, top: 69, right: 16, bottom: 69),
                          decoration: AppDecoration.fillBlack900b2,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomSearchView(
                                    focusNode: FocusNode(),
                                    controller: controller.inputFieldController,
                                    hintText: "msg_search_your_email".tr,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 12,
                                            top: 12,
                                            right: 8,
                                            bottom: 12),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(44)),
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 12,
                                            right: 12,
                                            bottom: 12),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgMicrophone)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(44))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 4, bottom: 453),
                                        padding: getPadding(
                                            left: 9,
                                            top: 21,
                                            right: 9,
                                            bottom: 21),
                                        decoration: AppDecoration
                                            .outlineGray70011
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder6),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      right: 7, bottom: 6),
                                                  child: Obx(() =>
                                                      ListView.separated(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            9.0,
                                                                        bottom:
                                                                            9.0),
                                                                child: SizedBox(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            379),
                                                                    child: Divider(
                                                                        height:
                                                                            getVerticalSize(
                                                                                1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .blueGray100)));
                                                          },
                                                          itemCount: controller
                                                              .elasticSearchModelObj
                                                              .value
                                                              .listcloseItemList
                                                              .value
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ListcloseItemModel
                                                                model =
                                                                controller
                                                                    .elasticSearchModelObj
                                                                    .value
                                                                    .listcloseItemList
                                                                    .value[index];
                                                            return ListcloseItemWidget(
                                                                model);
                                                          })))
                                            ])))
                              ])))
                ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
