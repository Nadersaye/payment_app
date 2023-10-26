import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_app/features/checkout/data/models/amount_model/amount_model.dart';
import 'package:payment_app/features/checkout/data/models/items_list_model/item.dart';
import 'package:payment_app/features/checkout/data/models/items_list_model/items_list_model.dart';
import 'package:payment_app/features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/thank_you_view.dart';
import 'dart:developer';
import '../../../../data/models/amount_model/details.dart';
import '../custom_button.dart';

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
              var amountModel = AmountModel(
                  total: "100",
                  currency: "EGP",
                  details: Details(
                      subtotal: "80", shipping: "20", shippingDiscount: 0));
              List<OrderItemModel> listItems = [
                OrderItemModel(
                    currency: "EGP", name: "apple", price: "10", quantity: 4),
                OrderItemModel(
                    currency: "EGP", name: "apple", price: "30", quantity: 2)
              ];
              var itemList = ItemsListModel(orders: listItems);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => PaypalCheckoutView(
                  sandboxMode: true,
                  clientId: "YOUR CLIENT ID",
                  secretKey: "YOUR SECRET KEY",
                  transactions: [
                    {
                      "amount": amountModel.toJson(),
                      "description": "The payment transaction description.",
                      "item_list": itemList.toJson()
                    }
                  ],
                  note: "Contact us for any questions on your order.",
                  onSuccess: (Map params) async {
                    log("onSuccess: $params");
                    Navigator.pop(context);
                  },
                  onError: (error) {
                    log("onError: $error");
                    Navigator.pop(context);
                  },
                  onCancel: () {
                    log('cancelled:');
                    Navigator.pop(context);
                  },
                ),
              ));
            });
      },
    );
  }
}
