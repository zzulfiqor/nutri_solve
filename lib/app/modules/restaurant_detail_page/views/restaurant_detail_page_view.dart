import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:nutri_solve/app/modules/restaurant_detail_page/views/modal_package_detail_view.dart';
import 'package:nutri_solve/common/utils/app_style.dart';
import 'package:nutri_solve/common/widgets/AppbarBackButton.dart';

import '../controllers/restaurant_detail_page_controller.dart';

class RestaurantDetailPageView extends GetView<RestaurantDetailPageController> {
  final kitchenName = Get.arguments[0];
  final kitchenImage = Get.arguments[1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Obx(() => _fabConfirmationItem()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        leading: AppbarBackButton(),
        backgroundColor: backgroundColor,
        title: Obx(() => AnimatedSwitcher(
              duration: Duration(milliseconds: 250),
              child: (controller.isScrollToggleKitchenName.value)
                  ? Text(
                      kitchenName,
                      key: Key("txtnamekitchen"),
                      style: titleTextStyleBlack,
                    )
                  : Text(
                      "",
                      key: Key("txtblank"),
                    ),
            )),
      ),
      body: Obx(
        () => SingleChildScrollView(
          controller: controller.scrollController.value,
          padding: EdgeInsets.only(
              bottom: (controller.itemInBasketCount > 0) ? 85 : 0),
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(paddingBodyValue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
                // Image and Restaurant Information
                ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadiusBoxValue),
                  child: Stack(
                    children: [
                      //
                      // Image Restaurant
                      SizedBox(
                        height: Get.height * .25,
                        width: Get.width,
                        child: Image.network(
                          "$kitchenImage",
                          fit: BoxFit.cover,
                        ),
                      ),
                      //
                      // Black Gradient
                      Positioned(
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  bodyTextColorBlack.withOpacity(.75),
                                  backgroundColor.withOpacity(0),
                                ]),
                          ),
                          height: Get.height * .25,
                          width: Get.width,
                        ),
                      ),
                      //
                      // Restaurant Name
                      Positioned(
                        bottom: 5,
                        child: Container(
                          padding: EdgeInsets.all(paddingBodyValue),
                          // height: Get.height * .075,
                          width: Get.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //
                              // Text Kitchen Name
                              AnimatedSwitcher(
                                duration: Duration(seconds: 1),
                                child: Text(
                                  "$kitchenName",
                                  style: titleTextStyleWhite.copyWith(
                                    fontSize: header3TextSize,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              //
                              // Spacer
                              SizedBox(height: spaceSmallest),
                              //
                              // Information
                              Row(
                                children: [
                                  //
                                  // Info Specialities
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: backgroundColor.withOpacity(.2),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.room_service,
                                          size: 16,
                                          color: mainColor,
                                        ),
                                        //
                                        // Spacer
                                        SizedBox(width: spaceSmallest),
                                        //
                                        // Text
                                        Text(
                                          "Salad, Porridge",
                                          style: bodysubParagraphTextStyleGrey
                                              .copyWith(color: backgroundColor),
                                        )
                                      ],
                                    ),
                                  ),
                                  //
                                  // Spacer
                                  SizedBox(width: spaceSmall),
                                  //
                                  // Info Address
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: backgroundColor.withOpacity(.2),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 2),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          size: 16,
                                          color: Colors.red,
                                        ),
                                        //
                                        // Spacer
                                        SizedBox(width: spaceSmallest),
                                        //
                                        // Text
                                        Text(
                                          "Margoyoso, Pati",
                                          style: bodysubParagraphTextStyleGrey
                                              .copyWith(color: backgroundColor),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //
                // Spacer
                SizedBox(height: spaceMedium),
                //
                // Information ? not sure
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadiusBoxValue),
                    color: mainColorBright.withOpacity(.3),
                  ),
                  padding: EdgeInsets.all(paddingBodyValue),
                  width: Get.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //
                      // Icon Info
                      Icon(
                        Icons.info_outline_rounded,
                        size: 22,
                        color: mainColorDark,
                      ),
                      //
                      // Info Description
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        // TODO : Implement Restaurant information here
                        child: Text(
                          "Don't forget to use voucher 'BERBAGIBERSAMA' to get 5% discount.",
                          textAlign: TextAlign.justify,
                          style: bodyTextStyleMainColor.copyWith(
                            color: mainColorDark,
                            fontSize: bodySubParagrapgTextSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                //
                // Spacer
                SizedBox(height: spaceMedium),
                //
                // Text Food Popular Package list
                Text(
                  "Popular package",
                  style:
                      titleTextStyleBlack.copyWith(fontSize: header3TextSize),
                ),
                //
                // Food Popular Package list for beneficiary
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (_, i) => Material(
                    child: InkWell(
                        // TODO:IMPLEMENT OPEN BOTTOM SHEET DETAIL MENU PACKAGE
                        onTap: () {
                          showMaterialModalBottomSheet(
                              context: context,
                              enableDrag: false,
                              expand: true,
                              builder: (_) => ModalPackageDetailView());
                        },
                        child: _itemRestaurantPackage()),
                  ),
                ),
                //
                // Spacer
                SizedBox(height: spaceMedium),
                //
                // Text Other Package list
                Text(
                  "Other packages",
                  style:
                      titleTextStyleBlack.copyWith(fontSize: header3TextSize),
                ),
                //
                // List of other packages
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (_, i) => Material(
                    child: InkWell(
                        // TODO:IMPLEMENT OPEN BOTTOM SHEET DETAIL MENU PACKAGE
                        onTap: () {},
                        child: _itemRestaurantPackage()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _fabConfirmationItem() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(borderRadiusBoxValue)),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: (controller.itemInBasketCount > 0) ? 100 : 0,
      padding: EdgeInsets.all(paddingBodyValue),
      child: SizedBox(
        height: 50,
        width: Get.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: mainColorDark),
          onPressed: () {
            // TODO : IMPLEMENT ORDER SUMMARY LOGIC
            Get.toNamed("/order-summary-page");
            controller.emptyBasket();
          },
          child: Text(
            "Checkout (${controller.itemInBasketCount.value} ${(controller.itemInBasketCount.value > 1) ? "packages" : "package"}) ",
            style: titleTextStyleWhite,
          ),
        ),
      ),
    );
  }

  Ink _itemRestaurantPackage() => Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadiusBoxValue),
        ),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            //
            // Row Image
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadiusBoxValue),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                    "https://akcdn.detik.net.id/community/media/visual/2020/03/17/7f5fd870-4803-46c4-834b-cb43c15de145.jpeg?q=90&w=480"),
              ),
            ),
            //
            // ROw Information
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  // Package name
                  Text(
                    "Paket Berbagi 7 Hari",
                    style: titleTextStyleBlack,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  //
                  // Spacer
                  SizedBox(height: spaceSmallest),
                  //
                  // Package Decription
                  Text(
                    "Paket untuk anak dengan 3 menu berbeda setiap hari, makanan dijamin sehat.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: bodyTextStyleGrey.copyWith(
                        fontSize: bodySubParagrapgTextSize),
                  ),
                  //
                  // Spacer
                  SizedBox(height: spaceSmall),
                  //
                  // Package Price + add to cart button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //
                      // Price
                      Text(
                        "Rp. 300.000",
                        style: titleTextStyleMainColorDark,
                      ),
                      //
                      // Button Add to cart
                      Material(
                        child: InkWell(
                          // TODO : IMPLEMENT ADD TO CART FUNCTION HERE
                          onTap: () {
                            controller.itemAdd();
                            print("Item add to cart");
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                color: mainColorDark,
                                borderRadius:
                                    BorderRadius.circular(spaceSmallest)),
                            padding: EdgeInsets.all(3),
                            child: Icon(Icons.add,
                                size: 18, color: backgroundColor),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      );
}
