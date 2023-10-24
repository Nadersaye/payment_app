import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class CustomPaidButton extends StatelessWidget {
  const CustomPaidButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      height: 58,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: Text('PAID',
            textAlign: TextAlign.center,
            style: Styles.style24.copyWith(color: const Color(0xff34A853))),
      ),
    );
  }
}
