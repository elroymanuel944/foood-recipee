import 'package:clothing_shop_app/dummy_db.dart';
import 'package:clothing_shop_app/view/globel_widgets/custom_video_card.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Scaffold(
            body: ListView.separated(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                itemBuilder: (context, index) => customvideocard(
                      rating: DummyDb.trendingNowList[index]["rating"],
                      duration: DummyDb.trendingNowList[index]["duration"],
                      title: DummyDb.trendingNowList[index]["title"],
                      profileImage: DummyDb.trendingNowList[index]
                          ["profileImage"],
                      userName: DummyDb.trendingNowList[index]["userName"],
                      imageurl: DummyDb.trendingNowList[index]["imageurl"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: DummyDb.trendingNowList.length)),
      ),
    );
  }
}
