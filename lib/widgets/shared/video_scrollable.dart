import 'package:flutter/material.dart';
import 'package:video_managment/domain/entities/video_post.dart';

class VideoScrollabeView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollabeView({
    super.key,
    required this.videos
    });

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green)
      ],
    );
  }
}