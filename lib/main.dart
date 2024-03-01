import 'package:flutter/material.dart';
import 'video_picker_page.dart';
import 'package:media_kit/media_kit.dart';

void main() {
  MediaKit.ensureInitialized(); // Initialize media_kit
  runApp(const GungnirApp());
}

class GungnirApp extends StatelessWidget {
  const GungnirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gungnir',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        colorScheme: ColorScheme.dark(
          primary: Colors.deepPurple,
          secondary: Colors.purpleAccent,
        ),
        useMaterial3: true,
      ),
      home: const VideoPickerPage(),
    );
  }
}
