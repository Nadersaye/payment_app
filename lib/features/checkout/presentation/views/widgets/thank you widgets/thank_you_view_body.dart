import 'package:flutter/material.dart';
import 'custom_check_circle_avatar.dart';
import 'custom_seperated_circle.dart';
import 'custom_thank_you_card.dart';
import 'hash_seperated_list.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const CustomThankYouCard(),
            Positioned(
                left: -18,
                bottom: MediaQuery.sizeOf(context).height / 4,
                child: const CustomseperatedCircleAvatar()),
            Positioned(
                right: -18,
                bottom: MediaQuery.sizeOf(context).height / 4,
                child: const CustomseperatedCircleAvatar()),
            Positioned(
              right: 26,
              left: 26,
              bottom: (MediaQuery.sizeOf(context).height / 4) + 18,
              child: const HashSeperatedList(),
            ),
            const Positioned(
              right: 0,
              left: 0,
              top: -50,
              child: CustomCheckCircleAvatar(),
            )
          ],
        ),
      ),
    );
  }
}
