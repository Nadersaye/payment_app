import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_button.dart';
import 'custom_credit_card.dart';
import 'payment_methods_listview.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomPaymentMethodsListview()),
        SliverToBoxAdapter(child: CustomCreditCard()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              buttonText: 'Pay',
              navigationWidget: PaymentDetailsView(),
            ),
          ),
        )
      ],
    );
  }
}
