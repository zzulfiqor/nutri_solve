import 'package:get/get.dart';

import '../controllers/beneficiary_gallery_page_controller.dart';

class BeneficiaryGalleryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeneficiaryGalleryPageController>(
      () => BeneficiaryGalleryPageController(),
    );
  }
}
