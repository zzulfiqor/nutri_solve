import 'package:get/get.dart';

import '../controllers/welcoming_page_controller.dart';

class WelcomingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomingPageController>(
      () => WelcomingPageController(),
    );
  }
}
