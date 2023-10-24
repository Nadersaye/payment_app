import 'package:flutter/material.dart';
import '../custom_button.dart';
import '../payment details widgets/payment_methods_listview.dart';

class CustomCardBottomSheet extends StatelessWidget {
  const CustomCardBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomPaymentMethodsListview(),
        const SizedBox(
          height: 32,
        ),
        CustomButton(buttonText: 'Continue', onPressed: () {})
      ],
    );
  }
}
