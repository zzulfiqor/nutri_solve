import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/beneficiary_updates_page_controller.dart';

class BeneficiaryUpdatesPageView
    extends GetView<BeneficiaryUpdatesPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeneficiaryUpdatesPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeneficiaryUpdatesPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
