import 'package:flutter/material.dart';

import '../../../../data/models/order_info_model.dart';
import 'order_info_item.dart';

class OrderInfoListview extends StatelessWidget {
  const OrderInfoListview({
    super.key,
    required this.orderInfo,
  });

  final List<OrderInfo> orderInfo;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return OrderInfoItem(
              keyString: orderInfo[index].keyString,
              value: orderInfo[index].value);
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 3,
            ),
        itemCount: orderInfo.length);
  }
}
