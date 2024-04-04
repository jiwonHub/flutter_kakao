import '../model/video.dart';

abstract interface class VideoRepository {
  List<Video> getVideos();
}