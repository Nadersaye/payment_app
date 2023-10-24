import 'package:flutter/material.dart';

import 'hash_seperated_item.dart';

class HashSeperatedList extends StatelessWidget {
  const HashSeperatedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(30, (index) {
        return const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: HashSeperatedItem(),
          ),
        );
      }),
    );
  }
}
