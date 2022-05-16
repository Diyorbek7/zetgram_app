import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          SizedBox(
            height: 130 * h,
            child: ListView.builder(
              padding: EdgeInsets.only(
                top: 25 * h,
              ),
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: index == 0
                          ? Container(
                              width: 60 * w,
                              margin: EdgeInsets.only(
                                right: 32 * w,
                                left: 25 * w,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 55 * h,
                                    child: DottedBorder(
                                      strokeWidth: 3,
                                      dashPattern: const [8, 5],
                                      borderType: BorderType.RRect,
                                      radius: const Radius.circular(9),
                                      child: Container(
                                        height: 55 * h,
                                        width: 53 * h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                      ),
                                      color: AppColor.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10 * h,
                                  ),
                                  Text(
                                    "Add Sto55ry",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13 * h,
                                      fontFamily: AppColor.fontNunitoSans,
                                      height: 24 / 13 * h,
                                      color: AppColor.dark,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 57 * h,
                                  margin: EdgeInsets.only(
                                    right: 25 * w,
                                  ),
                                  child: Container(
                                    height: 57 * h,
                                    width: 57 * h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                      border: Border.all(
                                        color: AppColor.blue,
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
