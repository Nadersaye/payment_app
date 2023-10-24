import 'package:flutter/material.dart';
import 'custom_seperated_circle.dart';
import 'custom_thank_you_card.dart';
import 'hash_seperated_list.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFEDEDED),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff34A853),
                child: Icon(
                  Icons.check,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
