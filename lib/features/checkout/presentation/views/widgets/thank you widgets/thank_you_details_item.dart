import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class ThankYouDetailsItem extends StatelessWidget {
  const ThankYouDetailsItem(
      {super.key, required this.keyString, required this.value});
  final String keyString;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyString,
          style: Styles.style18,
        ),
        Text(value, style: Styles.semiBoldStyle18),
      ],
    );
  }
}
