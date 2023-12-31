import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 34,
      thickness: 2,
      indent: 15,
      endIndent: 15,
      color: Colors.grey,
    );
  }
}
