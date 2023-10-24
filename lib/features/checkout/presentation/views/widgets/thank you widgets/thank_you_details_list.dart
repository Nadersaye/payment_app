import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/data/models/thank_you_details_model.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/thank%20you%20widgets/thank_you_details_item.dart';

class ThankYouDetailsList extends StatelessWidget {
  const ThankYouDetailsList({
    super.key,
    required this.thankYouModel,
  });

  final List<ThankYouDetailsModel> thankYouModel;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ThankYouDetailsItem(
              keyString: thankYouModel[index].key,
              value: thankYouModel[index].value);
        },
        separatorBuilder: (context, index) => const SizedBox(
              height: 3,
            ),
        itemCount: thankYouModel.length);
  }
}
