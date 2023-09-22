import 'package:flutter/material.dart';
import 'package:video_managment/domain/entities/video_post.dart';
import 'package:video_managment/infrastructure/models/local_video_model.dart';
import 'package:video_managment/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier{
  bool initialLoading = true;
  List<VideoPost> videos= [];

  Future <void> loadNexPage() async{
    //datasource repository

    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()
      ).toList();

      videos.addAll(newVideos);
      initialLoading=false;

      notifyListeners();
  }
}