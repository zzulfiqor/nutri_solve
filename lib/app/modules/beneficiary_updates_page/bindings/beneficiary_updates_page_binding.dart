import 'package:get/get.dart';

import '../controllers/beneficiary_updates_page_controller.dart';

class BeneficiaryUpdatesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeneficiaryUpdatesPageController>(
      () => BeneficiaryUpdatesPageController(),
    );
  }
}
