import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class StoryWidget extends StatefulWidget {
  final List data;

  const StoryWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return SizedBox(
      height: 130 * h,
      child: ListView.builder(
        padding: EdgeInsets.only(
          top: 25 * h,
        ),
        itemCount: widget.data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: index == 0
                    ? Container(
                        width: 59 * w,
                        margin: EdgeInsets.only(
                          right: 30 * w,
                          left: 25 * w,
                        ),
                        child: Column(
                          children: [
                            DottedBorder(
                              strokeWidth: 2.5,
                              dashPattern: const [8, 5],
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(9),
                              child: Container(
                                height: 52 * h,
                                width: 52 * h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/icons/plus.svg",
                                    height: 28 * h,
                                    width: 28 * h,
                                  ),
                                ),
                              ),
                              color: AppColor.blue,
                            ),
                            SizedBox(
                              height: 10 * h,
                            ),
                            Text(
                              "Add Story",
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
                    : Container(
                        width: 57 * h,
                        margin: EdgeInsets.only(
                          right: 25 * w,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 57 * h,
                              child: Container(
                                height: 57 * h,
                                width: 57 * h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    color: AppColor.blue,
                                    width: 2.5,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.asset(
                                    widget.data[index].image,
                                    height: 57 * h,
                                    width: 57 * h,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10 * h,
                            ),
                            Text(
                              widget.data[index].text,
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
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
