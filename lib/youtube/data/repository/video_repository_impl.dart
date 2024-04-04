import 'package:flutter_youtube_clone/youtube/data/data_source/video_data_source.dart';
import 'package:flutter_youtube_clone/youtube/data/model/video.dart';
import 'package:flutter_youtube_clone/youtube/data/repository/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository{
  final VideoDataSource _dataSource;

  VideoRepositoryImpl(this._dataSource);

  @override
  List<Video> getVideos() {
    return _dataSource.getVideos();
  }
}
