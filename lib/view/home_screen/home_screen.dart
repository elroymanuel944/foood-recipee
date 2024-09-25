import 'package:clothing_shop_app/dummy_db.dart';
import 'package:clothing_shop_app/view/home_screen/widgets/popular_category_section_card.dart';
import 'package:flutter/material.dart';
import 'package:clothing_shop_app/utils/constans/color_constans.dart';
import 'package:clothing_shop_app/view/globel_widgets/custom_video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // # section 1 - title
              _titleSection(),
              // # section 2 - trending now
              _trendingNowSection(),
              // # section 3 - popular cat section
              _popularCategorySection()
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularCategorySection() {
    return DefaultTabController(
      length: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              "Popular Category ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 12),
          TabBar(
              padding: EdgeInsets.symmetric(horizontal: 20),
              labelColor: ColorConstans.mainWhite,
              unselectedLabelColor: ColorConstans.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 0,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicator: BoxDecoration(
                  color: ColorConstans.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              tabs: [
                Tab(
                  text: "Salad",
                ),
                Tab(
                  text: "Breakfast",
                ),
                Tab(
                  text: "Appotizer",
                ),
                Tab(
                  text: "Noodle",
                ),
                Tab(
                  text: "Lunch",
                ),
              ]),
          SizedBox(height: 20),
          SizedBox(
            height: 231,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => PopularCategorySection(),
                separatorBuilder: (context, index) => SizedBox(width: 16),
                itemCount: 10),
          )
        ],
      ),
    );
  }

  Widget _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                "Treding Now 🔥",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: Colors.redAccent,
              )
            ],
          ),
        ),
        SizedBox(height: 16),

        //video card player

        SizedBox(
            height: 200,
            child: ListView.separated(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
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
      ],
    );
  }

  Widget _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            "Find best recipes \nfor cooking",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 2),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstans.lightGrey,
              ),
              hintText: "Search recipes",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: ColorConstans.lightGrey),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 2,
                  borderSide: BorderSide(color: ColorConstans.lightGrey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  gapPadding: 2,
                  borderSide: BorderSide(color: ColorConstans.lightGrey)),
            ),
          ),
        ),
      ],
    );
  }
}
