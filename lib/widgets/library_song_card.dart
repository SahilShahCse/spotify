import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibrarySongCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isPinned;
  const LibrarySongCard(
    this.title,
    this.subtitle, {
    super.key,
    this.isPinned = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 12,
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 6,
                    children: [
                      if (isPinned)
                        Transform.rotate(
                          angle: 3.14 / 3,
                          child: Icon(
                            CupertinoIcons.pin_fill,
                            color: Theme.of(context).colorScheme.surfaceBright,
                            size: 16,
                          ),
                        ),
                      Text(
                        subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(185),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
      ],
    );
  }
}
