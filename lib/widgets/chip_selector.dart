import 'package:flutter/material.dart';

import 'category_list.dart';

class ChipSelector extends StatefulWidget {
  const ChipSelector({super.key});

  @override
  State<ChipSelector> createState() => _ChipSelectorState();
}

class _ChipSelectorState extends State<ChipSelector> {
  String selectedCategory = 'All';

  final List<String> categories = ['All', 'Music', 'Podcast'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const CircleAvatar(),
        CategoryList(categories: categories,),
      ],
    );
  }
}
