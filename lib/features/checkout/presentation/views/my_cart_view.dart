import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_appbar.dart';
import 'widgets/my cart widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(appbarTitle: 'My Cart', context: context),
      body: const MyCartViewBody(),
    );
  }
}
