import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/features/checkout/data/models/order_info_model.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/my%20cart%20widgets/order_info_item.dart';

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
          SvgPicture.asset('assets/images/Group 6.svg'),
          const SizedBox(
            height: 25,
          ),
          ListView.separated(
              itemBuilder: (context, index) {
                return OrderInfoItem(
                    keyString: orderInfo[index].keyString,
                    value: orderInfo[index].value);
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 3,
                  ),
              itemCount: orderInfo.length),
        ],
      ),
    );
  }
}
