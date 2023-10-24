import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_button.dart';
import 'custom_credit_card.dart';
import 'payment_methods_listview.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomPaymentMethodsListview(),
        )),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          formKey: formKey,
          autovalidateMode: autovalidateMode,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: CustomButton(
                buttonText: 'Pay',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    setState(() {});
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ThankYouView()));
                  }
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
