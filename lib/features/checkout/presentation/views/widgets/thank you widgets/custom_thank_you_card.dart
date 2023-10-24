import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/thank%20you%20widgets/thank_you_details_list.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/total_info.dart';

import '../../../../data/models/thank_you_details_model.dart';
import 'custom_paid_button.dart';

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
        child: Column(
          children: [
            Text('Thank you!',
                textAlign: TextAlign.center, style: Styles.style25),
            Text('Your transaction was successful',
                textAlign: TextAlign.center, style: Styles.style20),
            const SizedBox(
              height: 42,
            ),
            ThankYouDetailsList(thankYouModel: thankYouDetails),
            const Divider(
              thickness: 2,
              height: 60,
              color: Color(0xffC7C7C7),
            ),
            const TotalInfo(keyString: 'Total', value: 50.97),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 23),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/logo.svg'),
                  const SizedBox(
                    width: 23,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'Credit Card\n', style: Styles.style18),
                        TextSpan(
                            text: 'Mastercard **78 ', style: Styles.style18),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  size: 100,
                ),
                CustomPaidButton()
              ],
            )
          ],
        ),
      ),
    );
  }
}
