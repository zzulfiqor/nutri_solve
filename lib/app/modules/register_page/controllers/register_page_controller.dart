import 'package:get/get.dart';
import 'package:nutri_solve/common/widgets/BlankDialog.dart';
import 'package:nutri_solve/common/widgets/DialogCustom.dart';

class RegisterPageController extends GetxController {
  //TODO: Implement RegisterPageController
  final isAgreeWithTerm = false.obs;
  final isProcessingRegister = false.obs;
  final count = 0.obs;

  @override
  void onInit() {
    print("RegisterPageController initialized");

    ever(
      isAgreeWithTerm,
      (_) => print(
        "is Agree with term = " + isAgreeWithTerm.value.toString(),
      ),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    print("RegisterPageController closed");
  }

  void processRegister() async {
    // TODO : IMPLEMENT REGUSTER PROCESS HERE
    Get.dialog(BlankDialog(), barrierDismissible: false);
    this.isProcessingRegister.toggle();
    this.isAgreeWithTerm.toggle();
    await Future.delayed(Duration(seconds: 2), () {
      Get.back();
      registerFinished();
      this.isProcessingRegister.toggle();
    });
  }

  void registerFinished() async {
    Get.dialog(
      DialogCustom(),
      barrierDismissible: false,
    );
    // TODO:Implement register feature here
    if (Get.isDialogOpen) {
      await Future.delayed(Duration(seconds: 2), () {
        Get.offNamed('/welcoming-page');
      });
    }
  }
}
