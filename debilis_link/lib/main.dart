import 'package:debilis_link/views/main_view.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(DebilisLink());
}

class DebilisLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Roboto",
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.grey[300],
        ),
      ),
      home: const MainView(),
    );
  }
}
