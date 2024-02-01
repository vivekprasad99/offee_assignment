import 'package:coding_assignment/music/player_screen/provider/player_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'music/splash/widget/splash_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PlayerProvider()),
      ],
      child: MaterialApp(
        title: 'Music App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashWidget(),
      ),
    );
  }
}