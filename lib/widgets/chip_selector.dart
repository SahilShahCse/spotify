import 'package:flutter/material.dart';

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
        ...categories.map((category) {
          final isSelected = selectedCategory == category;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = category;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? Theme.of(context).colorScheme.surfaceBright : Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? Theme.of(context).scaffoldBackgroundColor : null,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}
