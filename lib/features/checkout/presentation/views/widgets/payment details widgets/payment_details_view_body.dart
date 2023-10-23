import 'package:flutter/material.dart';
import 'payment_methods_listview.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  int isIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: CustomPaymentMethodsListview(),
        ),
      ],
    );
  }
}
