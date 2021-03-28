import 'package:get/get.dart';

import '../controllers/restaurant_list_page_controller.dart';

class RestaurantListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RestaurantListPageController>(
      () => RestaurantListPageController(),
    );
  }
}
