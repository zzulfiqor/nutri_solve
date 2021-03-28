import 'package:get/get.dart';

import '../controllers/order_summary_page_controller.dart';

class OrderSummaryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderSummaryPageController>(
      () => OrderSummaryPageController(),
    );
  }
}
