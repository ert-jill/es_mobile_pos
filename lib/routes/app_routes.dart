import 'package:pos/presentation/account_creation_screen/account_creation_screen.dart';
import 'package:pos/presentation/account_creation_screen/binding/account_creation_binding.dart';
import 'package:pos/presentation/item_availability_screen/item_availability_screen.dart';
import 'package:pos/presentation/item_availability_screen/binding/item_availability_binding.dart';
import 'package:pos/presentation/customised_order_status_screen/customised_order_status_screen.dart';
import 'package:pos/presentation/customised_order_status_screen/binding/customised_order_status_binding.dart';
import 'package:pos/presentation/automated_email_sending_screen/automated_email_sending_screen.dart';
import 'package:pos/presentation/automated_email_sending_screen/binding/automated_email_sending_binding.dart';
import 'package:pos/presentation/scheduling_screen/scheduling_screen.dart';
import 'package:pos/presentation/scheduling_screen/binding/scheduling_binding.dart';
import 'package:pos/presentation/email_login_screen/email_login_screen.dart';
import 'package:pos/presentation/email_login_screen/binding/email_login_binding.dart';
import 'package:pos/presentation/collect_transaction_fees_screen/collect_transaction_fees_screen.dart';
import 'package:pos/presentation/collect_transaction_fees_screen/binding/collect_transaction_fees_binding.dart';
import 'package:pos/presentation/pricing_engine_screen/pricing_engine_screen.dart';
import 'package:pos/presentation/pricing_engine_screen/binding/pricing_engine_binding.dart';
import 'package:pos/presentation/email_lists_screen/email_lists_screen.dart';
import 'package:pos/presentation/email_lists_screen/binding/email_lists_binding.dart';
import 'package:pos/presentation/elastic_search_screen/elastic_search_screen.dart';
import 'package:pos/presentation/elastic_search_screen/binding/elastic_search_binding.dart';
import 'package:pos/presentation/request_management_screen/request_management_screen.dart';
import 'package:pos/presentation/request_management_screen/binding/request_management_binding.dart';
import 'package:pos/presentation/print_screen/print_screen.dart';
import 'package:pos/presentation/print_screen/binding/print_binding.dart';
import 'package:pos/presentation/sales_reporting_screen/sales_reporting_screen.dart';
import 'package:pos/presentation/sales_reporting_screen/binding/sales_reporting_binding.dart';
import 'package:pos/presentation/custom_form_screen/custom_form_screen.dart';
import 'package:pos/presentation/custom_form_screen/binding/custom_form_binding.dart';
import 'package:pos/presentation/statistics_reports_screen/statistics_reports_screen.dart';
import 'package:pos/presentation/statistics_reports_screen/binding/statistics_reports_binding.dart';
import 'package:pos/presentation/onboarding_guide_screen/onboarding_guide_screen.dart';
import 'package:pos/presentation/onboarding_guide_screen/binding/onboarding_guide_binding.dart';
import 'package:pos/presentation/hamburger_menu_screen/hamburger_menu_screen.dart';
import 'package:pos/presentation/hamburger_menu_screen/binding/hamburger_menu_binding.dart';
import 'package:pos/presentation/xml_csv_template_builder_screen/xml_csv_template_builder_screen.dart';
import 'package:pos/presentation/xml_csv_template_builder_screen/binding/xml_csv_template_builder_binding.dart';
import 'package:pos/presentation/offline_work_screen/offline_work_screen.dart';
import 'package:pos/presentation/offline_work_screen/binding/offline_work_binding.dart';
import 'package:pos/presentation/splash_screen/splash_screen.dart';
import 'package:pos/presentation/splash_screen/binding/splash_binding.dart';
import 'package:pos/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:pos/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String accountCreationScreen = '/account_creation_screen';

  static const String itemAvailabilityScreen = '/item_availability_screen';

  static const String customisedOrderStatusScreen =
      '/customised_order_status_screen';

  static const String automatedEmailSendingScreen =
      '/automated_email_sending_screen';

  static const String schedulingScreen = '/scheduling_screen';

  static const String emailLoginScreen = '/email_login_screen';

  static const String collectTransactionFeesScreen =
      '/collect_transaction_fees_screen';

  static const String pricingEngineScreen = '/pricing_engine_screen';

  static const String emailListsScreen = '/email_lists_screen';

  static const String elasticSearchScreen = '/elastic_search_screen';

  static const String requestManagementScreen = '/request_management_screen';

  static const String printScreen = '/print_screen';

  static const String salesReportingScreen = '/sales_reporting_screen';

  static const String customFormScreen = '/custom_form_screen';

  static const String statisticsReportsScreen = '/statistics_reports_screen';

  static const String onboardingGuideScreen = '/onboarding_guide_screen';

  static const String hamburgerMenuScreen = '/hamburger_menu_screen';

  static const String xmlCsvTemplateBuilderScreen =
      '/xml_csv_template_builder_screen';

  static const String offlineWorkScreen = '/offline_work_screen';

  static const String splashScreen = '/splash_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: accountCreationScreen,
      page: () => AccountCreationScreen(),
      bindings: [
        AccountCreationBinding(),
      ],
    ),
    GetPage(
      name: itemAvailabilityScreen,
      page: () => ItemAvailabilityScreen(),
      bindings: [
        ItemAvailabilityBinding(),
      ],
    ),
    GetPage(
      name: customisedOrderStatusScreen,
      page: () => CustomisedOrderStatusScreen(),
      bindings: [
        CustomisedOrderStatusBinding(),
      ],
    ),
    GetPage(
      name: automatedEmailSendingScreen,
      page: () => AutomatedEmailSendingScreen(),
      bindings: [
        AutomatedEmailSendingBinding(),
      ],
    ),
    GetPage(
      name: schedulingScreen,
      page: () => SchedulingScreen(),
      bindings: [
        SchedulingBinding(),
      ],
    ),
    GetPage(
      name: emailLoginScreen,
      page: () => EmailLoginScreen(),
      bindings: [
        EmailLoginBinding(),
      ],
    ),
    GetPage(
      name: collectTransactionFeesScreen,
      page: () => CollectTransactionFeesScreen(),
      bindings: [
        CollectTransactionFeesBinding(),
      ],
    ),
    GetPage(
      name: pricingEngineScreen,
      page: () => PricingEngineScreen(),
      bindings: [
        PricingEngineBinding(),
      ],
    ),
    GetPage(
      name: emailListsScreen,
      page: () => EmailListsScreen(),
      bindings: [
        EmailListsBinding(),
      ],
    ),
    GetPage(
      name: elasticSearchScreen,
      page: () => ElasticSearchScreen(),
      bindings: [
        ElasticSearchBinding(),
      ],
    ),
    GetPage(
      name: requestManagementScreen,
      page: () => RequestManagementScreen(),
      bindings: [
        RequestManagementBinding(),
      ],
    ),
    GetPage(
      name: printScreen,
      page: () => PrintScreen(),
      bindings: [
        PrintBinding(),
      ],
    ),
    GetPage(
      name: salesReportingScreen,
      page: () => SalesReportingScreen(),
      bindings: [
        SalesReportingBinding(),
      ],
    ),
    GetPage(
      name: customFormScreen,
      page: () => CustomFormScreen(),
      bindings: [
        CustomFormBinding(),
      ],
    ),
    GetPage(
      name: statisticsReportsScreen,
      page: () => StatisticsReportsScreen(),
      bindings: [
        StatisticsReportsBinding(),
      ],
    ),
    GetPage(
      name: onboardingGuideScreen,
      page: () => OnboardingGuideScreen(),
      bindings: [
        OnboardingGuideBinding(),
      ],
    ),
    GetPage(
      name: hamburgerMenuScreen,
      page: () => HamburgerMenuScreen(),
      bindings: [
        HamburgerMenuBinding(),
      ],
    ),
    GetPage(
      name: xmlCsvTemplateBuilderScreen,
      page: () => XmlCsvTemplateBuilderScreen(),
      bindings: [
        XmlCsvTemplateBuilderBinding(),
      ],
    ),
    GetPage(
      name: offlineWorkScreen,
      page: () => OfflineWorkScreen(),
      bindings: [
        OfflineWorkBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
