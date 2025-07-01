import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  final bool selected;
  final VoidCallback onTap;
  final String title;
  final IconData icon;

  const BottomBarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Show top line only when selected
            if (selected)
              Container(
                height: 2,
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(color: Colors.white),
              )
            else
              const SizedBox(
                height: 14,
              ), // same space to keep alignment consistent

            Icon(
              icon,
              color: selected ? primaryColor : primaryColor.withAlpha(185),
            ),
            SizedBox(height: 2),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: selected ? primaryColor : primaryColor.withAlpha(185),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
