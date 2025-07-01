import 'package:flutter/material.dart';
import 'package:spotify/widgets/ads_card.dart';
import 'package:spotify/widgets/image_title_card.dart';
import '../widgets/chip_selector.dart';
import '../widgets/horizontal_music_list_section.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> titles = [
    'Liked Songs',
    'All Trending Songs',
    'Your Top Songs',
    'Aditya Gadvi Songs',
    'but i see her in the back of my mind, i see her',
    'Bollywood Dance Music',
  ];

  final musicList = [
    {"title": "Fitoor (Original Motion Music)", "description": "Amit Trivedi"},
    {
      "title": null,
      "description": "Sachin-Jigar, Yo Yo Honey Singh, Badshah, Amit",
    },
    {"title": "Kesariya", "description": "Arijit Singh"},
    {"title": null, "description": "Vishal-Shekhar, Shekhar Ravjiani"},
    {"title": "Tum Mile (Reprise)", "description": "Neeraj Shridhar"},
    {"title": null, "description": "Pritam, KK, Mohit Chauhan"},
    {"title": "Galliyan (Unplugged)", "description": "Ankit Tiwari"},
    {"title": null, "description": "Jubin Nautiyal, Mithoon"},
    {"title": "Malang Title Track", "description": "Ved Sharma"},
    {"title": null, "description": "B Praak, Jaani"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              ChipSelector(),
              SizedBox(height: 24),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: titles.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  mainAxisExtent: 55,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ImageTitleCard(titles[index]);
                },
              ),
              SizedBox(height: 24),
              AdsCard('Digster India'),
              SizedBox(height: 24),
              HorizontalMusicListSection(
                title: 'Jump back in',
                musicList: musicList,
              ),
              SizedBox(height: 24),
              HorizontalMusicListSection(
                title: 'Jump back in',
                musicList: musicList,
              ),
              SizedBox(height: 75),
            ],
          ),
        ),
      ),
    );
  }
}

// spaces - 4, 6, 8, 12, 16, 18, 22, 24, 26, 32, 64, 128
