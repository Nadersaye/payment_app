import 'package:flutter/material.dart';

class CustomThankYouCard extends StatelessWidget {
  const CustomThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Column(
        children: [],
      ),
    );
  }
}
