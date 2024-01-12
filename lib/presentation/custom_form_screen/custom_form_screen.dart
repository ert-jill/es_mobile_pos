import 'controller/custom_form_controller.dart';
import 'package:flutter/material.dart';
import 'package:pos/core/app_export.dart';
import 'package:pos/core/utils/validation_functions.dart';
import 'package:pos/widgets/app_bar/appbar_image.dart';
import 'package:pos/widgets/app_bar/appbar_title.dart';
import 'package:pos/widgets/app_bar/custom_app_bar.dart';
import 'package:pos/widgets/custom_button.dart';
import 'package:pos/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CustomFormScreen extends GetWidget<CustomFormController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray900,
                    margin: getMargin(left: 16, top: 12, bottom: 13),
                    onTap: () {
                      onTapArrowleft9();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_custom_form".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 27, right: 16, bottom: 27),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_first_name".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium16),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: controller.inputFieldController,
                                    hintText: "msg_enter_your_first".tr,
                                    margin: getMargin(top: 7),
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    })
                              ]),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_last_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputFieldOneController,
                                        hintText: "msg_enter_your_last".tr,
                                        margin: getMargin(top: 6),
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "Please enter valid text";
                                          }
                                          return null;
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_email_id2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray800),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputFieldTwoController,
                                        hintText: "msg_enter_your_email2".tr,
                                        margin: getMargin(top: 7),
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "Please enter valid email";
                                          }
                                          return null;
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_phone_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray800),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: controller
                                            .inputFieldThreeController,
                                        hintText: "msg_enter_your_phone".tr,
                                        margin: getMargin(top: 6),
                                        textInputType: TextInputType.phone,
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "Please enter valid phone number";
                                          }
                                          return null;
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16),
                                    Obx(() => CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputFieldFourController,
                                        hintText: "lbl_enter_password".tr,
                                        margin: getMargin(top: 6),
                                        padding:
                                            TextFormFieldPadding.PaddingT12,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword.value =
                                                  !controller
                                                      .isShowPassword.value;
                                            },
                                            child: Container(
                                                margin: getMargin(all: 12),
                                                child: CustomImageView(
                                                    svgPath: controller
                                                            .isShowPassword
                                                            .value
                                                        ? ImageConstant.imgEye
                                                        : ImageConstant
                                                            .imgEye))),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(44)),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText:
                                            controller.isShowPassword.value))
                                  ])),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("msg_confirm_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16),
                                    Obx(() => CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputFieldFiveController,
                                        hintText: "lbl_enter_password".tr,
                                        margin: getMargin(top: 7),
                                        padding:
                                            TextFormFieldPadding.PaddingT12,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword1.value =
                                                  !controller
                                                      .isShowPassword1.value;
                                            },
                                            child: Container(
                                                margin: getMargin(all: 12),
                                                child: CustomImageView(
                                                    svgPath: controller
                                                            .isShowPassword1
                                                            .value
                                                        ? ImageConstant.imgEye
                                                        : ImageConstant
                                                            .imgEye))),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(44)),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText:
                                            controller.isShowPassword1.value))
                                  ])),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "lbl_submit".tr,
                              margin: getMargin(top: 24, bottom: 5))
                        ])))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}
