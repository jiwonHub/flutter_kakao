import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required String title,
    required String subTitle,
    required String profileUrl,
    required String imageUrl,
    required String userName,
    required String count,
    required String time,
  }) = _Video;

}