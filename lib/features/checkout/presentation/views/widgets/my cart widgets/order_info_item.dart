import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem(
      {super.key, required this.keyString, required this.value});
  final String keyString;
  final num value;
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: keyString, style: Styles.style18),
      const WidgetSpan(
          alignment: PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Spacer()),
      TextSpan(text: '\$' '$value', style: Styles.style18),
    ]));
  }
}