import 'package:get/get.dart';

import '../controllers/beneficiary_description_controller.dart';

class BeneficiaryDescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeneficiaryDescriptionController>(
      () => BeneficiaryDescriptionController(),
    );
  }
}
