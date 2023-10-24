import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'custom_card_type_details.dart';

class CustomCardTypeContainer extends StatelessWidget {
  const CustomCardTypeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/logo.svg'),
        const SizedBox(
          width: 23,
        ),
        const CustomCardTypeDetails()
      ],
    );
  }
}
