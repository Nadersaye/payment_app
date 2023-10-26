import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/models/order_info_model.dart';
import 'package:payment_app/features/checkout/data/repos/checkout_repo_imp.dart';
import 'package:payment_app/features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/total_info.dart';
import '../custom_button.dart';
import 'custom_card_bottom_sheet.dart';
import 'custom_divider.dart';
import 'order_info_listview.dart';

class MyCartViewBody extends StatefulWidget {
  const MyCartViewBody({super.key});

  @override
  State<MyCartViewBody> createState() => _MyCartViewBodyState();
}

class _MyCartViewBodyState extends State<MyCartViewBody> {
  List<OrderInfo> orderInfo = [
    OrderInfo(keyString: 'Order Subtotal', value: 42.97),
    OrderInfo(keyString: 'Discount', value: 0),
    OrderInfo(keyString: 'Shipping', value: 8)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/images/Group 6.png')),
          const SizedBox(
            height: 25,
          ),
          OrderInfoListview(orderInfo: orderInfo),
          const CustomDivider(),
          const TotalInfo(keyString: 'Total', value: 50.97),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            buttonText: 'Complete Payment',
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => PaymentCubit(CheckoutRepoImp()),
                      child: const CustomCardBottomSheet(),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}
