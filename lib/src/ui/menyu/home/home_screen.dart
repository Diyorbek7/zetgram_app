import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/model/story/story_model.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';
import 'package:zetgram_app/src/widget/home/lenta_widget.dart';
import 'package:zetgram_app/src/widget/home/story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StoryModel> data = [
    StoryModel(
      image: "assets/images/img.png",
      text: "Luuk",
    ),
    StoryModel(
      image: "assets/images/img.png",
      text: "Luuk",
    ),
    StoryModel(
      image: "assets/images/img.png",
      text: "Luuk",
    ),
    StoryModel(
      image: "assets/images/img.png",
      text: "Luuk",
    ),
    StoryModel(
      image: "assets/images/img.png",
      text: "Luuk",
    ),
    StoryModel(
      image: "assets/images/img.png",
      text: "Luuk",
    ),
    StoryModel(
      image: "assets/images/img.png",
      text: "Luuk",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppColor.lightWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.white,
        centerTitle: false,
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28 * h,
            fontFamily: AppColor.fontNunitoSans,
            height: 39 / 28 * h,
            color: AppColor.dark,
          ),
        ),
        leadingWidth: 0 * w,
        titleSpacing: 25 * w,
        actions: [
          SvgPicture.asset(
            "assets/icons/notification.svg",
            height: 28 * h,
            width: 28 * h,
          ),
          SizedBox(
            width: 25 * w,
          ),
        ],
      ),
      body: ListView(
        children: [
          StoryWidget(data: data),
          SizedBox(
            height: 16 * h,
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const LentaWidget();
            },
          ),
        ],
      ),
    );
  }
}
