import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class CustomCardTypeDetails extends StatelessWidget {
  const CustomCardTypeDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Credit Card\n', style: Styles.style18),
          TextSpan(text: 'Mastercard **78 ', style: Styles.style18),
        ],
      ),
    );
  }
}
