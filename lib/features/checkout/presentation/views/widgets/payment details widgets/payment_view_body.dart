import 'package:flutter/material.dart';

import 'custom_payment_container.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody(
      {super.key, required this.image, this.isActive = false});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomPaymentContainer(isActive: isActive, image: image)],
    );
  }
}
