import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  final List<String> categories;
  final ValueChanged<String>? onChanged;
  final String? initialSelected;

  const CategoryList({
    super.key,
    required this.categories,
    this.onChanged,
    this.initialSelected,
  });

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  late String selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.initialSelected ?? widget.categories.first;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: widget.categories.map((category) {
        final isSelected = selectedCategory == category;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedCategory = category;
            });
            widget.onChanged?.call(category);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected
                  ? Theme.of(context).colorScheme.surfaceBright
                  : Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              category,
              style: TextStyle(
                color: isSelected
                    ? Theme.of(context).scaffoldBackgroundColor
                    : null,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
