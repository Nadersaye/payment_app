import 'package:flutter/material.dart';
import '../../../../data/models/thank_you_details_model.dart';
import 'custom_thank_you_card_body.dart';

class CustomThankYouCard extends StatefulWidget {
  const CustomThankYouCard({
    super.key,
  });

  @override
  State<CustomThankYouCard> createState() => _CustomThankYouCardState();
}

class _CustomThankYouCardState extends State<CustomThankYouCard> {
  List<ThankYouDetailsModel> thankYouDetails = [
    ThankYouDetailsModel(key: 'Date', value: '01/24/2023'),
    ThankYouDetailsModel(key: 'Time', value: '10:15 AM'),
    ThankYouDetailsModel(key: 'To', value: 'Sam Louis'),
  ];
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
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 23),
        child: CustomThankYouCardBody(thankYouDetails: thankYouDetails),
      ),
    );
  }
}
