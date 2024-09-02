import 'package:clothing_shop_app/utils/constans/color_constans.dart';
import 'package:clothing_shop_app/utils/constans/image_constans.dart';
import 'package:clothing_shop_app/view/onbody_screen/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class OnBodyScreen extends StatelessWidget {
  const OnBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //Frist section
            _buildBackgroundImage(),

            //second section
            _buildGradientSection(context),
            Positioned(
              right: 0,
              left: 0,
              top: 26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  RichText(
                      text: TextSpan(
                          text: "60k+",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          children: [
                        TextSpan(
                            text: "  Premium recipes",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15))
                      ]))
                  // Text("60k+",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.white,
                  //     ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned _buildGradientSection(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 85, vertical: 82),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 56,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Text(
              "Find the recipes for cooking",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavscreen(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                    color: ColorConstans.primaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Start cooking",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(ImageConstans.ONBODYSREEN_BG),
      )),
    );
  }
}
