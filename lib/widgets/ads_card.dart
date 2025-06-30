import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {
  final String title;
  const AdsCard(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            spacing: 12,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: AspectRatio(aspectRatio: 16 / 9),
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Spacer(),
                  FilledButton(onPressed: () {}, child: Text('Listen Now')),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 16 + 12 + 4,
          left: 16 + 12,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            color: Theme.of(context).scaffoldBackgroundColor.withAlpha(100),
            child: Text(
              'Advertisement',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            ),
          ),
        ),

        Positioned(
          top: 16 + 12,
          right: 16 + 12,
          child: Row(
            spacing: 6,
            children: [
              _buildIcons(context, CupertinoIcons.speaker_1),
              _buildIcons(context, CupertinoIcons.xmark),
            ],
          ),
        ),
      ],
    );
  }

  Container _buildIcons(BuildContext context, IconData icon) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor.withAlpha(100),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(icon, size: 22),
    );
  }
}
