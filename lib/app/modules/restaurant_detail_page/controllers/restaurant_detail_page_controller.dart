import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RestaurantDetailPageController extends GetxController {
  final scrollController = ScrollController(initialScrollOffset: 0).obs;

  final itemInBasketCount = 0.obs;
  var isScrollToggleKitchenName = false.obs;
  final orderCount = 0.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.value.addListener(() {
      if (scrollController.value.hasClients) {
        if (scrollController.value.position.pixels > 169) {
          if (isScrollToggleKitchenName.value == false) {
            isScrollToggleKitchenName.toggle();
          } else {}
        } else {
          if (isScrollToggleKitchenName.value == true) {
            isScrollToggleKitchenName.toggle();
          } else {}
        }
      } else {}
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void itemAdd() {
    this.itemInBasketCount.value++;
    update();
  }

  void emptyBasket() {
    this.itemInBasketCount.value = 0;
  }

  void itemAddFromOrderCount(int count) {
    this.itemInBasketCount.value = this.itemInBasketCount.value + count;
  }

  void orderCountAdd() {
    if (this.orderCount.value != 99) {
      this.orderCount.value++;
    }
  }

  void orderCountSub() {
    if (this.orderCount.value != 0) {
      this.orderCount.value--;
    }
  }

  void emptyOrderCount() {
    this.orderCount.value = 0;
  }
}
