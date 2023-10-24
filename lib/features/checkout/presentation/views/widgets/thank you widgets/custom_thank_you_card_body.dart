import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/models/thank_you_details_model.dart';
import '../total_info.dart';
import 'custom_barcode_row.dart';
import 'custom_card_type_container.dart';
import 'thank_you_details_list.dart';

class CustomThankYouCardBody extends StatelessWidget {
  const CustomThankYouCardBody({
    super.key,
    required this.thankYouDetails,
  });

  final List<ThankYouDetailsModel> thankYouDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Thank you!', textAlign: TextAlign.center, style: Styles.style25),
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
          child: const CustomCardTypeContainer(),
        ),
        const Spacer(),
        const CustomBarcodeRow()
      ],
    );
  }
}
