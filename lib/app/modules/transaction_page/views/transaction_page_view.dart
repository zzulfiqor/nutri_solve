import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/app/modules/order_summary_page/controllers/order_summary_page_controller.dart';
import 'package:nutri_solve/common/utils/app_style.dart';
import 'package:nutri_solve/common/widgets/AppbarBackButton.dart';

import '../controllers/transaction_page_controller.dart';

class TransactionPageView extends GetView<TransactionPageController> {
  OrderSummaryPageController sumarryController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          leading: AppbarBackButton(),
          title: Text(
            "Transfer via Dana",
            style: titleTextStyleBlack,
          ),
          centerTitle: true,
        ),
        body: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.all(paddingBodyValue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Your invoice : Rp. ${sumarryController.itemBasketPriceTotal()}",
                style: bodyTextStyleBlack,
              ),
              Image.network(
                  'https://assets.kompasiana.com/statics/crawl/555dd0b50423bdca548b4568.png?t=o&v=760'),
              Text(
                'Finish Your Transaction Before 29-03-2021',
                style: bodyTextStyleBlack,
              ),
            ],
          ),
        ));
  }
}
