import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_youtube_clone/youtube/presentation/main/components/thumbnail_card_widget.dart';

import '../../../data/model/video.dart';

enum MenuItems { All, Game, News, Online, Mix, Action, Hot }

extension MenuItemExtension on MenuItems {
  String get label {
    switch (this) {
      case MenuItems.All:
        return '전체';
      case MenuItems.Game:
        return '게임';
      case MenuItems.News:
        return '뉴스';
      case MenuItems.Online:
        return '실시간';
      case MenuItems.Mix:
        return '믹스';
      case MenuItems.Action:
        return '액션';
      case MenuItems.Hot:
        return '인기';
      default:
        return '';
    }
  }
}

class HomeTab extends StatelessWidget {
  final List<Video> videos;

  const HomeTab({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: _menu(),
        ),
        _video(),
      ]),
    );
  }

  Widget _menu() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          _menuItemWithPadding(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black, // 약간의 투명한 검은색 배경
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                "assets/compass.png",
                width: 25,
                height: 25,
                color: Colors.white, // 이미지를 흰색으로 설정
              ),
            ),
          ),
          ...MenuItems.values.map((item) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _menuItemWithBorder(
                child: Text(
                  item.label,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _menuItemWithPadding({required Widget child}) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0), child: child);
  }

  Widget _menuItemWithBorder({required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  Widget _video() {
    return SizedBox(
      width: double.infinity,
      height: 700,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: videos.map((e) => ThumbnailCardWidget(video: e)).toList(),
      ),
    );
  }
}
