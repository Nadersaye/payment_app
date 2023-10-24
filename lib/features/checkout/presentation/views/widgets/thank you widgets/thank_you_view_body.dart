import 'package:flutter/material.dart';
import 'custom_thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Stack(
        children: [CustomThankYouCard()],
      ),
    );
  }
}
