import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class CustomThankYouCard extends StatelessWidget {
  const CustomThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Column(
          children: [
            Text('Thank you!',
                textAlign: TextAlign.center, style: Styles.style25),
            Text('Your transaction was successful',
                textAlign: TextAlign.center, style: Styles.style20),
            const SizedBox(
              height: 42,
            ),
          ],
        ),
      ),
    );
  }
}
