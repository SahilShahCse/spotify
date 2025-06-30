import 'package:flutter/material.dart';
import 'package:spotify/themes/dark_theme.dart';
import 'package:spotify/widgets/ads_card.dart';
import 'package:spotify/widgets/image_title_card.dart';
import 'package:spotify/widgets/title_text.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText('Jump back In'),
                Row(
                  spacing: 12,
                  children: [
                    ImageTitleCard('Darshan Raval'),
                    ImageTitleCard('Darshan Raval'),
                  ],
                ),
                AdsCard('Digster India'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
