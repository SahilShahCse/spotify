import 'package:flutter/material.dart';
import 'package:spotify/themes/dark_theme.dart';
import 'package:spotify/widgets/image_title_card.dart';

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
              children: [
                ImageTitleCard('Liked Songs'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
