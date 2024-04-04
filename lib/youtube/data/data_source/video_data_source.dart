import '../model/video.dart';

class VideoDataSource {
  List<Video> getVideos() {
    return [
      const Video(
        title: '제목1',
        subTitle: '부제목1',
        profileUrl:
            'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202106/16/0bf38986-d90d-46fd-9736-325a68a750b4.jpg',
        imageUrl: 'https://yt3.googleusercontent.com/ytc/AIdro_kjde4hb2ZL8agQiuSV08IpW_8GIAE_ClVVVtGf3w=s900-c-k-c0x00ffffff-no-rj',
        userName: "유저1",
        count: "조회수 4만회",
        time: "9시간 전",
      ),
      const Video(
        title: '제목2',
        subTitle: '부제목2',
        profileUrl:
        'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202106/16/0bf38986-d90d-46fd-9736-325a68a750b4.jpg',
        imageUrl: 'https://yt3.googleusercontent.com/ytc/AIdro_kjde4hb2ZL8agQiuSV08IpW_8GIAE_ClVVVtGf3w=s900-c-k-c0x00ffffff-no-rj',
        userName: "유저2",
        count: "조회수 4만회",
        time: "9시간 전",
      ),
      const Video(
        title: '제목3',
        subTitle: '부제목3',
        profileUrl:
        'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202106/16/0bf38986-d90d-46fd-9736-325a68a750b4.jpg',
        imageUrl: 'https://yt3.googleusercontent.com/ytc/AIdro_kjde4hb2ZL8agQiuSV08IpW_8GIAE_ClVVVtGf3w=s900-c-k-c0x00ffffff-no-rj',
        userName: "유저3",
        count: "조회수 4만회",
        time: "9시간 전",
      ),
    ];
  }
}
