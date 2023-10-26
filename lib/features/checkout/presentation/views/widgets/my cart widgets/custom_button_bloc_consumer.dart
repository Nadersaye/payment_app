import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';
import '../custom_button.dart';
import 'execute_paypal.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const ThankYouView();
          }));
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
            isLoading: state is PaymentLoading ? true : false,
            buttonText: 'Continue',
            onPressed: () {
              /*PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(
                      amount: (100 * 100).toString(),
                      currency: 'EGP',
                      customerId: 'cus_OtBbIs3aWW3vWQ');
              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);*/
              executePaypal(context);
            });
      },
    );
  }
}
