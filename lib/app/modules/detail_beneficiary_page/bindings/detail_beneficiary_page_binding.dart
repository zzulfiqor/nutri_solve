import 'package:get/get.dart';

import '../controllers/detail_beneficiary_page_controller.dart';

class DetailBeneficiaryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailBeneficiaryPageController>(
      () => DetailBeneficiaryPageController(),
    );
  }
}
