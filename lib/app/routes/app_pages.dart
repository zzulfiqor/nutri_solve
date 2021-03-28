import 'package:get/get.dart';

import 'package:nutri_solve/app/modules/beneficiary_description/bindings/beneficiary_description_binding.dart';
import 'package:nutri_solve/app/modules/beneficiary_description/views/beneficiary_description_view.dart';
import 'package:nutri_solve/app/modules/beneficiary_gallery_page/bindings/beneficiary_gallery_page_binding.dart';
import 'package:nutri_solve/app/modules/beneficiary_gallery_page/views/beneficiary_gallery_page_view.dart';
import 'package:nutri_solve/app/modules/beneficiary_updates_page/bindings/beneficiary_updates_page_binding.dart';
import 'package:nutri_solve/app/modules/beneficiary_updates_page/views/beneficiary_updates_page_view.dart';
import 'package:nutri_solve/app/modules/detail_beneficiary_page/bindings/detail_beneficiary_page_binding.dart';
import 'package:nutri_solve/app/modules/detail_beneficiary_page/views/detail_beneficiary_page_view.dart';
import 'package:nutri_solve/app/modules/home/bindings/home_binding.dart';
import 'package:nutri_solve/app/modules/home/views/home_view.dart';
import 'package:nutri_solve/app/modules/login_page/bindings/login_page_binding.dart';
import 'package:nutri_solve/app/modules/login_page/views/login_page_view.dart';
import 'package:nutri_solve/app/modules/order_summary_page/bindings/order_summary_page_binding.dart';
import 'package:nutri_solve/app/modules/order_summary_page/views/order_summary_page_view.dart';
import 'package:nutri_solve/app/modules/payment_method_list_page/bindings/payment_method_list_page_binding.dart';
import 'package:nutri_solve/app/modules/payment_method_list_page/views/payment_method_list_page_view.dart';
import 'package:nutri_solve/app/modules/profile_page/bindings/profile_page_binding.dart';
import 'package:nutri_solve/app/modules/profile_page/views/profile_page_view.dart';
import 'package:nutri_solve/app/modules/register_page/bindings/register_page_binding.dart';
import 'package:nutri_solve/app/modules/register_page/views/register_page_view.dart';
import 'package:nutri_solve/app/modules/restaurant_detail_page/bindings/restaurant_detail_page_binding.dart';
import 'package:nutri_solve/app/modules/restaurant_detail_page/views/restaurant_detail_page_view.dart';
import 'package:nutri_solve/app/modules/restaurant_list_page/bindings/restaurant_list_page_binding.dart';
import 'package:nutri_solve/app/modules/restaurant_list_page/views/restaurant_list_page_view.dart';
import 'package:nutri_solve/app/modules/transaction_page/bindings/transaction_page_binding.dart';
import 'package:nutri_solve/app/modules/transaction_page/views/transaction_page_view.dart';
import 'package:nutri_solve/app/modules/welcoming_page/bindings/welcoming_page_binding.dart';
import 'package:nutri_solve/app/modules/welcoming_page/views/welcoming_page_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOMING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOMING_PAGE,
      page: () => WelcomingPageView(),
      binding: WelcomingPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BENEFICIARY_PAGE,
      page: () => DetailBeneficiaryPageView(),
      binding: DetailBeneficiaryPageBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT_LIST_PAGE,
      page: () => RestaurantListPageView(),
      binding: RestaurantListPageBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT_DETAIL_PAGE,
      page: () => RestaurantDetailPageView(),
      binding: RestaurantDetailPageBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_SUMMARY_PAGE,
      page: () => OrderSummaryPageView(),
      binding: OrderSummaryPageBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_METHOD_LIST_PAGE,
      page: () => PaymentMethodListPageView(),
      binding: PaymentMethodListPageBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_PAGE,
      page: () => TransactionPageView(),
      binding: TransactionPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.BENEFICIARY_DESCRIPTION,
      page: () => BeneficiaryDescriptionView(),
      binding: BeneficiaryDescriptionBinding(),
    ),
    GetPage(
      name: _Paths.BENEFICIARY_UPDATES_PAGE,
      page: () => BeneficiaryUpdatesPageView(),
      binding: BeneficiaryUpdatesPageBinding(),
    ),
    GetPage(
      name: _Paths.BENEFICIARY_GALLERY_PAGE,
      page: () => BeneficiaryGalleryPageView(),
      binding: BeneficiaryGalleryPageBinding(),
    ),
  ];
}
