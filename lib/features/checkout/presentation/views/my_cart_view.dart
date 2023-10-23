import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'widgets/my cart widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'My Cart',
          style: Styles.style25,
        ),
        leading: Center(
            child: SvgPicture.asset(
          'assets/images/Arrow 1.svg',
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        )),
      ),
      body: const MyCartViewBody(),
    );
  }
}
