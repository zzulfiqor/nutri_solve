import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/common/utils/app_style.dart';
import 'package:nutri_solve/common/widgets/AppbarBackButton.dart';

import '../controllers/order_summary_page_controller.dart';

class OrderSummaryPageView extends GetView<OrderSummaryPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _fabCheckout(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: AppbarBackButton(),
        title: Text(
          'Order Summary',
          style: titleTextStyleBlack,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0),
        physics: BouncingScrollPhysics(),
        child: Container(
          color: backgroundColor,
          padding: EdgeInsets.only(
            left: paddingBodyValue,
            top: paddingBodyValue,
            right: paddingBodyValue,
            bottom: 120,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              // Recipient Text
              Text(
                'Recipient',
                style: titleTextStyleBlack.copyWith(fontSize: header4TextSize),
              ),
              //
              // Spacer
              SizedBox(height: spaceSmall),
              //
              // Recipient Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  // Icon Recipient
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(borderRadiusBoxValue),
                        color: mainColorDark.withOpacity(.1)),
                    padding: EdgeInsets.all(spaceSmallest),
                    child: Icon(
                      Icons.person,
                      color: mainColorDark,
                    ),
                  ),
                  //
                  // Recipient Name adn Address
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //
                          // Name
                          Text(
                            "Siti Fatimatuz Zahro",
                            style: titleTextStyleBlack,
                          ),
                          //
                          // Spacer
                          SizedBox(height: spaceSmallest),
                          //
                          // Address
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(borderRadiusBoxValue),
                                color: bodyTextColorGrey.withOpacity(.1)),
                            padding: EdgeInsets.all(spaceSmall),
                            width: Get.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Address :",
                                  style: titleTextStyleBlack.copyWith(
                                      fontSize: bodySubParagrapgTextSize),
                                ),
                                //
                                // Spacer
                                SizedBox(
                                  height: spaceSmallest,
                                ),
                                Text(
                                  "Ds.arjawinangun cirebon blok 2 kongas rt/rw 01/04 arjawinangun cirebon.",
                                  style: bodyTextStyleGrey.copyWith(
                                      fontSize: bodySubParagrapgTextSize),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //
              // Spacer
              SizedBox(height: spaceWide),
              //
              // Text Item Basket
              Text(
                'Item Basket',
                style: titleTextStyleBlack.copyWith(fontSize: header4TextSize),
              ),
              //
              // Spacer
              SizedBox(height: spaceSmallest),
              //
              // List Of Item in Item Basket
              ListView.builder(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (_, i) {
                  return itemSummaryItemBasket();
                },
              ),
              //
              // Spacer
              SizedBox(height: spaceMedium),
              //
              // Text Item Basket
              Text(
                'Voucher',
                style: titleTextStyleBlack.copyWith(fontSize: header4TextSize),
              ),

              //
              // Tile Voucher
              Material(
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    padding: EdgeInsets.symmetric(vertical: spaceMedium),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //
                        // Icon + Text
                        Row(
                          children: [
                            Icon(Icons.confirmation_num, color: mainColorDark),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Add Promo Code",
                              style: titleTextStyleBlack,
                            ),
                          ],
                        ),
                        //
                        // Ic
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              // Spacer
              SizedBox(height: spaceMedium),
              //
              // Divider
              Container(
                height: 1,
                color: bodyTextColorGrey.withOpacity(.2),
              ),
              //
              // Spacer
              SizedBox(height: spaceMedium),
              //
              // Total Item
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Package Item',
                    style: titleTextStyleBlack.copyWith(
                        fontSize: bodyTitleTextSize),
                  ),
                  Obx(() => Text(
                        "Rp. ${controller.itemBasketPriceTotal()}",
                        style: titleTextStyleBlack.copyWith(
                            fontWeight: FontWeight.w800),
                      )),
                ],
              ),
              //
              // Spacer
              SizedBox(height: spaceSmallest),
              //
              // Total Delivery
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Fee',
                    style: titleTextStyleBlack.copyWith(
                        fontSize: bodyTitleTextSize),
                  ),
                  Obx(() => Text(
                        "Rp. ${controller.deliveryFee}",
                        style: titleTextStyleBlack.copyWith(
                            fontWeight: FontWeight.w800),
                      )),
                ],
              ),
              //
              // Spacer
              SizedBox(height: spaceSmall),
              //
              // Total All
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: titleTextStyleMainColorDark.copyWith(
                        fontSize: header3TextSize),
                  ),
                  Obx(
                    () => Text(
                      "Rp. ${(controller.itemBasketPriceTotal() + controller.deliveryFee.value)}",
                      style: titleTextStyleMainColorDark.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: header4TextSize,
                      ),
                    ),
                  ),
                ],
              ),
              //
              // Spacer
              SizedBox(height: spaceSmall),
              //
              // Divider
              Container(
                height: 1,
                color: bodyTextColorGrey.withOpacity(.2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container itemSummaryItemBasket() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: spaceSmall),
      child: Ink(
        height: 75,
        width: Get.width,
        color: bodyTextColorGrey,
        child: Obx(
          () => Row(
            children: [
              //
              // Image Package
              ClipRRect(
                borderRadius: BorderRadius.circular(borderRadiusBoxValue),
                child: SizedBox(
                  height: 75,
                  width: 75,
                  child: Image.network(
                      'https://akcdn.detik.net.id/community/media/visual/2020/03/17/7f5fd870-4803-46c4-834b-cb43c15de145.jpeg?q=90&w=480'),
                ),
              ),
              //
              // Item Information
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //
                      // Package Name
                      Text(
                        "Paket Berbagi 7 Hari",
                        style: titleTextStyleBlack,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      //
                      // Row of Price and counter controller
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //
                            // Price
                            Text(
                              "Rp. ${controller.itemBasketPriceTotal()}",
                              style: titleTextStyleMainColorDark.copyWith(
                                  fontSize: header4TextSize),
                            ),
                            //
                            // Row of COunter controller
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //
                                  // Button Minus
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: mainColorBright
                                                .withOpacity(.3)),
                                        height: 20,
                                        width: 20,
                                      ),
                                      IconButton(
                                          splashColor: mainColorDark,
                                          highlightColor: mainColorBright,
                                          icon: Icon(
                                            Icons.remove,
                                            size: 18,
                                            color: mainColorDark,
                                          ),
                                          onPressed: () =>
                                              {controller.itemBasketMinus()}),
                                    ],
                                  ),
                                  //
                                  // Text COunter
                                  Text(
                                    "${controller.itemBasketCount}",
                                    style: titleTextStyleBlack,
                                  ),
                                  //
                                  // Button Plus
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: mainColorBright
                                                .withOpacity(.3)),
                                        height: 20,
                                        width: 20,
                                      ),
                                      IconButton(
                                        splashColor: mainColorDark,
                                        highlightColor: mainColorBright,
                                        icon: Icon(
                                          Icons.add,
                                          size: 18,
                                          color: mainColorDark,
                                        ),
                                        onPressed: () =>
                                            {controller.itemBasketPlus()},
                                      ),
                                    ],
                                  ),
                                ]),
                          ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ItemPaymentMethod(int i) {
    return Container(
        child: ListTile(
      title: Text(
        "Payment Method",
        style: titleTextStyleBlack,
      ),
      leading: FaIcon(
        (i == 0)
            ? FontAwesomeIcons.dollarSign
            : (i == 1)
                ? FontAwesomeIcons.paypal
                : FontAwesomeIcons.wallet,
        color: mainColorDark,
        size: 20,
      ),
    ));
  }

  Container _fabCheckout() {
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
      height: 100,
      padding: EdgeInsets.all(paddingBodyValue),
      child: SizedBox(
        height: 50,
        width: Get.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: mainColorDark),
          onPressed: () {
            // TODO : IMPLEMENT CONFIRM
            Get.toNamed('/payment-method-list-page');
          },
          child: Text(
            "Confirm",
            style: titleTextStyleWhite,
          ),
        ),
      ),
    );
  }
}
