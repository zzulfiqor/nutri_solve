import 'package:get/get.dart';

import '../controllers/payment_method_list_page_controller.dart';

class PaymentMethodListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentMethodListPageController>(
      () => PaymentMethodListPageController(),
    );
  }
}
