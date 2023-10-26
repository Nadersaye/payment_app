import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/models/payment_intent_input_model.dart';
import '../../../manager/cubit/payment_cubit.dart';

void executeStripe(BuildContext context) {
  PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(
      amount: (100 * 100).toString(),
      currency: 'EGP',
      customerId: 'cus_OtBbIs3aWW3vWQ');
  BlocProvider.of<PaymentCubit>(context)
      .makePayment(paymentIntentInputModel: paymentIntentInputModel);
}
