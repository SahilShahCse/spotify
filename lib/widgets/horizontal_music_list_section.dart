import 'package:flutter/material.dart';
import 'image_title_description_card.dart';
import 'title_text.dart';

class HorizontalMusicListSection extends StatelessWidget {
  final String title;
  final List<Map<String, String?>> musicList;

  const HorizontalMusicListSection({
    super.key,
    required this.title,
    required this.musicList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(title),
        const SizedBox(height: 12),
        SizedBox(
          height: 184,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: musicList.length,
            itemBuilder: (BuildContext context, int index) {
              final item = musicList[index];
              return SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: ImageTitleDescriptionCard(
                    title: item['title'],
                    description: item['description'] ?? '',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
