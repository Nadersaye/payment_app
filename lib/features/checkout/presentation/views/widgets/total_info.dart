import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class TotalInfo extends StatelessWidget {
  const TotalInfo({super.key, required this.keyString, required this.value});
  final String keyString;
  final num value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyString,
          style: Styles.style24,
        ),
        Text('\$ $value', style: Styles.style24),
      ],
    );
  }
}
