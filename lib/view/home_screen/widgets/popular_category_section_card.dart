import 'package:clothing_shop_app/utils/constans/color_constans.dart';
import 'package:flutter/material.dart';

class PopularCategorySection extends StatelessWidget {
  const PopularCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              height: 176,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 196, 191, 191),
                  borderRadius: BorderRadius.circular(12))),
        ),
        Positioned(
          right: 0,
          left: 0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/5591730/pexels-photo-5591730.jpeg?auto=compress&cs=tinysrgb&w=600"),
            backgroundColor: ColorConstans.primaryColor,
            radius: 55,
          ),
        )
      ],
    );
  }
}
