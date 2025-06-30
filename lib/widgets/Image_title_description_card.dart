import 'package:flutter/material.dart';

class ImageTitleDescriptionCard extends StatelessWidget {
  final String title;
  final String description;

  final int size;

  const ImageTitleDescriptionCard({
    super.key,
    required this.title,
    required this.description,
    this.size = 150,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.toDouble(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: Colors.blue, child: AspectRatio(aspectRatio: 1 / 1)),
          Text(title, maxLines: 1),
          Text(
            description,
            maxLines: 1,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary.withAlpha(100),
            ),
          ),
        ],
      ),
    );
  }
}
