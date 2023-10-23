import 'package:flutter/material.dart';
import '../../../../data/models/payment_methods_model.dart';
import 'payment_methods_listview_item.dart';

class CustomPaymentMethodsListview extends StatefulWidget {
  const CustomPaymentMethodsListview({
    super.key,
  });
  @override
  State<CustomPaymentMethodsListview> createState() =>
      _CustomPaymentMethodsListviewState();
}

class _CustomPaymentMethodsListviewState
    extends State<CustomPaymentMethodsListview> {
  List<PaymentMethodsModel> paymentMethods = [
    PaymentMethodsModel(image: 'assets/images/SVGRepo_iconCarrier.svg'),
    PaymentMethodsModel(image: 'assets/images/Group.svg')
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: PaymentMethodsListviewItem(
                  isActive: activeIndex == index,
                  image: paymentMethods[index].image),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
          itemCount: paymentMethods.length),
    );
  }
}
