import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/beneficiary_description_controller.dart';

class BeneficiaryDescriptionView
    extends GetView<BeneficiaryDescriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeneficiaryDescriptionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BeneficiaryDescriptionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
