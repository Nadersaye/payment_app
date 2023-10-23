import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.navigationWidget,
  });
  final String buttonText;
  final Widget navigationWidget;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color(0xff34A853),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return navigationWidget;
        }));
      },
      height: 73,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Text(
        buttonText,
        style: Styles.style22,
      ),
    );
  }
}
