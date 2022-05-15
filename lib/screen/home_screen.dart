import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';
import 'package:netflix/widget/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      "title": "사랑의 불시착",
      "keyword": '사랑/로맨스/판타지',
      "poster": 'test_movie_1.png',
      'like': false
    })
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            CarouselImage(movies: movies),
            TopBar(),
          ],
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "images/bbongflix_logo.png",
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            child: Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
