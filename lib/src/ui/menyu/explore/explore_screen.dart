import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.white,
        centerTitle: false,
        titleSpacing: 25 * w,
        title: Text(
          "Explore",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28 * h,
            fontFamily: AppColor.fontNunitoSans,
            height: 38 / 28 * h,
            color: AppColor.dark,
          ),
        ),
        actions: [
          SvgPicture.asset(
            "assets/icons/search.svg",
            height: 28 * h,
            width: 28 * h,
          ),
          SizedBox(
            width: 25 * w,
          ),
        ],
      ),
    );
  }
}
