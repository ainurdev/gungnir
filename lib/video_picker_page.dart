import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'video_player_page.dart';

class VideoPickerPage extends StatelessWidget {
  const VideoPickerPage({Key? key}) : super(key: key);

  void _pickVideo(BuildContext context) async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.video);

    if (result != null) {
      File file = File(result.files.single.path!);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VideoPlayerPage(videoPath: file.path),
        ),
      );
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gungnir - Pick Video')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _pickVideo(context),
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.purpleAccent, // Use backgroundColor instead of primary
            foregroundColor:
                Colors.white, // Use foregroundColor instead of onPrimary
          ),
          child: const Text('Pick Video'),
        ),
      ),
    );
  }
}
