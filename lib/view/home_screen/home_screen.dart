import 'package:clothing_shop_app/utils/constans/color_constans.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          child: Column(
            children: [
              // # section 1
              _titleSection(),

              //section 2 trending section

              Padding(
                padding: const EdgeInsets.only(left: 12, right: 20, top: 12),
                child: Row(
                  children: [
                    Text(
                      "Trending now 🔥",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: ColorConstans.primaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 280,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 30,
                            width: 50,
                            color: const Color.fromARGB(255, 119, 115, 115),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find the best recipes \nfor cooking",
          style: TextStyle(
              color: Colors.black, fontSize: 27, fontWeight: FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 17),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "search recipes",
                hintStyle: TextStyle(color: Colors.grey)),
          ),
        ),
      ],
    );
  }
}
