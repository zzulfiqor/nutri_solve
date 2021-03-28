import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nutri_solve/common/utils/app_style.dart';
import 'package:nutri_solve/common/widgets/AppbarBackButton.dart';

import '../controllers/payment_method_list_page_controller.dart';

class PaymentMethodListPageView
    extends GetView<PaymentMethodListPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppbarBackButton(),
        backgroundColor: backgroundColor,
        title: Text(
          'Choose payment method',
          style: titleTextStyleBlack,
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(paddingBodyValue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Methods",
                style: titleTextStyleBlack.copyWith(fontSize: header4TextSize),
              ),
              //
              // Spacer
              SizedBox(height: spaceSmall),
              _itemPaymentMethod(
                leading: Image.network(
                    'https://cdn.techinasia.com/data/images/XPI515iaUKF1NBUI3sH83cylvtJuiznF2Mvtkd88.png'),
                title: "Transfer via Dana Wallet",
                onTap: () {
                  Get.toNamed('/transaction-page');
                },
              ),
              //
              // Divider
              Container(
                height: 1,
                color: bodyTextColorGrey.withOpacity(.2),
              ),
              _itemPaymentMethod(
                title: 'Transfer via OVO Wallet',
                leading: Image.network(
                    'https://i.pinimg.com/originals/51/10/73/5110737a4c39f49eeaf1ee1094fe32db.png'),
                onTap: () {},
              ),
              //
              // Divider
              Container(
                height: 1,
                color: bodyTextColorGrey.withOpacity(.2),
              ),
              _itemPaymentMethod(
                title: 'Transfer via GoPay Wallet',
                leading: Image.network(
                    'https://pbs.twimg.com/profile_images/1063328338477899776/Y8ZbOKJ5_400x400.jpg'),
                onTap: () {},
              ),
            ],
          )),
    );
  }

  Widget _itemPaymentMethod({Widget leading, String title, Function onTap}) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Ink(
          height: 50,
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              // Method+Name
              Row(
                children: [
                  //
                  // Payment Method Icon
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: leading,
                  ),
                  //
                  // Spacer
                  SizedBox(width: 20),
                  //
                  // Payment method Name
                  Text(
                    "$title",
                    style: titleTextStyleBlack,
                  ),
                ],
              ),
              //
              // Arrow Forward Icon
              Icon(Icons.arrow_forward_ios, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
