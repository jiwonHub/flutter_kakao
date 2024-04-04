import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube_clone/youtube/data/model/video.dart';

class ThumbnailCardWidget extends StatelessWidget {
  final Video video;

  const ThumbnailCardWidget({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black
        ),
        child: Column(
          children: [
            Image.network(
              video.profileUrl,
              width: double.infinity,
              height: 300,
            ),
            Row(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  video.imageUrl,
                  width: 50,
                  height: 50,
                ),
              ),
              SizedBox(width: 30,),
              Column(
                children: [
                  Text(
                    video.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    video.subTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Spacer(),
              const ImageIcon(
                AssetImage("assets/dots.png"),
                color: Colors.white,
                size: 30,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
