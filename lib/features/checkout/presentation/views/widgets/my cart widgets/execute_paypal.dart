import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_app/core/utils/payment_keys.dart';
import '../../../../data/models/amount_model/amount_model.dart';
import '../../../../data/models/amount_model/details.dart';
import '../../../../data/models/items_list_model/item.dart';
import '../../../../data/models/items_list_model/items_list_model.dart';

void executePaypal(BuildContext context) {
  var transactionData = getTransactionData();
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => PaypalCheckoutView(
      sandboxMode: true,
      clientId: PaymentKeys.clientId,
      secretKey: PaymentKeys.paypalSecretKey,
      transactions: [
        {
          "amount": transactionData.amount.toJson(),
          "description": "The payment transaction description.",
          "item_list": transactionData.itemList.toJson()
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
}

({AmountModel amount, ItemsListModel itemList}) getTransactionData() {
  var amount = AmountModel(
      total: "100",
      currency: "USD",
      details: Details(subtotal: "100", shipping: "0", shippingDiscount: 0));
  List<OrderItemModel> listItems = [
    OrderItemModel(currency: "USD", name: "apple", price: "10", quantity: 4),
    OrderItemModel(currency: "USD", name: "apple", price: "30", quantity: 2)
  ];
  var itemList = ItemsListModel(orders: listItems);
  return (amount: amount, itemList: itemList);
}
