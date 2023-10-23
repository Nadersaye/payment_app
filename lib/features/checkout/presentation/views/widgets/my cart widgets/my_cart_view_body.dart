import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/features/checkout/data/models/order_info_model.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/my%20cart%20widgets/total_info.dart';
import '../custom_button.dart';
import 'custom_divider.dart';
import 'order_info_listview.dart';

class MyCartViewBody extends StatefulWidget {
  const MyCartViewBody({super.key});

  @override
  State<MyCartViewBody> createState() => _MyCartViewBodyState();
}

class _MyCartViewBodyState extends State<MyCartViewBody> {
  List<OrderInfo> orderInfo = [
    OrderInfo(keyString: 'Order Subtotal', value: 42.97),
    OrderInfo(keyString: 'Discount', value: 0),
    OrderInfo(keyString: 'Shipping', value: 8)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          Expanded(child: SvgPicture.asset('assets/images/Group 6.svg')),
          const SizedBox(
            height: 25,
          ),
          OrderInfoListview(orderInfo: orderInfo),
          const CustomDivider(),
          const TotalInfo(keyString: 'Total', value: 50.97),
          const SizedBox(
            height: 16,
          ),
          const CustomButton(
            buttonText: 'Complete Payment',
            navigationWidget: PaymentDetailsView(),
          )
        ],
      ),
    );
  }
}
