import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/widgets/category_list.dart';
import 'package:spotify/widgets/title_text.dart';

import '../widgets/library_song_card.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final List<String> category = ['Playlist', 'Podcasts', 'Album', 'Artist'];

  final List<Map<String, dynamic>> libraryItems = [
    {'title': 'Your Episodes', 'artist': 'Spotify Originals', 'isPinned': true},
    {'title': 'Daily Mix 1', 'artist': 'Arijit Singh, KK, Pritam', 'isPinned': true},
    {'title': 'Gym Beats', 'artist': 'Various Artists', 'isPinned': true},
    {'title': 'Top 50 India', 'artist': 'Chart', 'isPinned': false},
    {'title': 'Peaceful Piano', 'artist': 'Max Richter', 'isPinned': false},
    {'title': 'Workout Hits', 'artist': 'Various Artists', 'isPinned': false},
    {'title': 'Bollywood Romance', 'artist': 'Armaan Malik', 'isPinned': false},
    {'title': 'Tech Talks', 'artist': 'TechPod', 'isPinned': false},
    {'title': 'Car Drive Vibes', 'artist': 'User Playlist', 'isPinned': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildAppBar(),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(16),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return LibrarySongCard(libraryItems[index]['title'], libraryItems[index]['artist'], isPinned: libraryItems[index]['isPinned'],);
                      },
                    ),
                  ),
                  SizedBox(height: 75),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 8.0),
          child: Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 12),
              TitleText('Your Library'),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.add)),
            ],
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CategoryList(categories: category),
        ),
      ],
    );
  }
}
