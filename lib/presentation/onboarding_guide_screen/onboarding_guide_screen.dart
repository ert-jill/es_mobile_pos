import 'controller/onboarding_guide_controller.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingGuideScreen extends GetWidget<OnboardingGuideController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 42,
            right: 42,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPaymentmethodonline,
                height: getSize(
                  227,
                ),
                width: getSize(
                  227,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 62,
                ),
                child: Text(
                  "msg_quick_easy_payments".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold32,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  303,
                ),
                margin: getMargin(
                  left: 20,
                  top: 16,
                  right: 21,
                ),
                child: Text(
                  "msg_get_your_business".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtGilroyMedium18,
                ),
              ),
              Container(
                height: getVerticalSize(
                  8,
                ),
                margin: getMargin(
                  top: 75,
                ),
                child: SmoothIndicator(
                  offset: 0,
                  count: 4,
                  size: Size.zero,
                  effect: ScrollingDotsEffect(
                    spacing: 4.68,
                    activeDotColor: ColorConstant.blueA700,
                    dotColor: ColorConstant.blue200,
                    dotHeight: getVerticalSize(
                      8,
                    ),
                    dotWidth: getHorizontalSize(
                      8,
                    ),
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 90,
                  bottom: 3,
                ),
                color: ColorConstant.blueA700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder37,
                ),
                child: Container(
                  height: getSize(
                    75,
                  ),
                  width: getSize(
                    75,
                  ),
                  padding: getPadding(
                    all: 24,
                  ),
                  decoration: AppDecoration.fillBlueA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder37,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowright,
                        height: getSize(
                          26,
                        ),
                        width: getSize(
                          26,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
