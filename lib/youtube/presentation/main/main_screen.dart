import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_youtube_clone/youtube/data/model/video.dart';
import 'package:flutter_youtube_clone/youtube/data/repository/video_repository.dart';
import 'package:flutter_youtube_clone/youtube/presentation/main/tabs/home_tab.dart';

class MainScreen extends StatefulWidget {
  final VideoRepository videoRepository;

  const MainScreen({super.key, required this.videoRepository});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior = NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = [
      HomeTab(
          videos: widget.videoRepository
              .getVideos()
              .map((video) => Video(
                    title: video.title,
                    subTitle: video.subTitle,
                    profileUrl: video.profileUrl,
                    imageUrl: video.imageUrl,
                    userName: video.userName,
                    count: video.count,
                    time: video.time,
                  ))
              .toList()),

    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset(
              "assets/youtube.png",
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 8),
            const Text(
              'YouTube',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(width: 120),
            Row(
              children: [
                Icon(
                  Icons.connected_tv,
                  color: Colors.white,
                ),
                SizedBox(width: 16),
                Stack(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Text(
                          '+9',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(width: 16),
                Icon(
                  Icons.person,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
      body: tabs[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.black,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            label: '홈',
          ),
          NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/shorts.png"),
                color: Colors.white,
              ),
              label: 'Shorts'),
          NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/add.png"),
                color: Colors.white,
              ),
              label: ''),
          NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/subscribe.png"),
                color: Colors.white,
              ),
              label: '구독'),
          NavigationDestination(
              icon: ImageIcon(
                AssetImage("assets/folder.png"),
                color: Colors.white,
              ),
              label: '보관함'),
        ],
      ),
    );
  }
}
