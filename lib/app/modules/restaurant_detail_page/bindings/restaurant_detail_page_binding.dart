import 'package:get/get.dart';

import '../controllers/restaurant_detail_page_controller.dart';

class RestaurantDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestaurantDetailPageController>(
      () => RestaurantDetailPageController(),
    );
  }
}
