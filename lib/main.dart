import 'package:flutter/material.dart';
import 'package:spotify/screens/home_page.dart';
import 'package:spotify/screens/main_screen.dart';
import 'package:spotify/themes/dark_theme.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: MainScreen(),
    );
  }
}
