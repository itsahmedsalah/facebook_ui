import 'package:facebook_ui/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget {
  static const String routeName = "HomePage";

  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Image.asset("assets/Plus.png"),
          SizedBox(width: 6),
          Image.asset("assets/Search.png"),
          SizedBox(width: 6),
          Image.asset("assets/Messenger.png"),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        title: Text(
          "Facebook",
          style: TextStyle(
            color: Color(0xff1877F2),
            fontWeight: FontWeight.w800,
            fontSize: 30,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(homeSVG),
                  SvgPicture.asset(videoSVG),
                  SvgPicture.asset(storeSVG),
                  SvgPicture.asset(profileSVG),
                  SvgPicture.asset(notifSVG),
                  CircleAvatar(backgroundImage: AssetImage(messiPic)),
                ],
              ),
            ),
            Divider(color: Colors.grey, height: 1),

            Container(
              margin: EdgeInsets.symmetric(vertical: 18, horizontal: 11),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(messiPic),
                    radius: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      "What's in Your Mind?",
                      style: hintTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset(gallerySVG),
                ],
              ),
            ),
            Divider(height: 2, color: Colors.grey),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 112,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),

                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(messiPic),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 2),
                                width: double.infinity,
                                color: Colors.white,
                                alignment: Alignment.center,
                                child: Text(
                                  "Create  a Story",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff242527),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.only(top: 60),
                          child: SvgPicture.asset(plusSVG),
                        ),
                      ],
                    ),
                  ),
                  storyWidget(),
                  storyWidget(),
                  storyWidget(),
                ],
              ),
            ),
            Divider(color: Colors.grey, thickness: 2),
            Image.asset(messiPic),
          ],
        ),
      ),
    );
  }

  Widget storyWidget() => Container(
    width: 112,
    height: 180,
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.black,
      image: DecorationImage(image: AssetImage(messiPic), fit: BoxFit.cover),
    ),

    child: Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(5),
      child: Image.asset(goatPNG),
    ),
  );
}
