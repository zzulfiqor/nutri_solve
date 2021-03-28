import 'package:get/get.dart';

class OrderSummaryPageController extends GetxController {
  var itemBasketCount = 0.obs;
  var itemBasketPrice = 300000.obs;
  var deliveryFee = 20000.obs;

  void itemBasketPlus() => (this.itemBasketCount >= 99)
      ? this.itemBasketCount.value = 99
      : this.itemBasketCount.value++;

  void itemBasketMinus() => (this.itemBasketCount <= 0)
      ? this.itemBasketCount.value = 0
      : this.itemBasketCount.value--;

  int itemBasketPriceTotal() {
    return itemBasketCount.value * itemBasketPrice.value;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
