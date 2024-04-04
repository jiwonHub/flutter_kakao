import 'package:flutter/material.dart';
import 'package:flutter_youtube_clone/youtube/data/data_source/video_data_source.dart';
import 'package:flutter_youtube_clone/youtube/data/repository/video_repository_impl.dart';
import 'package:flutter_youtube_clone/youtube/presentation/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(videoRepository: VideoRepositoryImpl(
        VideoDataSource()
      ),),
    );
  }
}
