import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class LentaWidget extends StatelessWidget {
  const LentaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        left: 25 * w,
        right: 25 * w,
        bottom: 16 * h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 17 * h,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 15 * w,
                ),
                color: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(21),
                  child: Image.asset(
                    "assets/images/img.png",
                    height: 42 * h,
                    width: 42 * h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 19 * w,
              ),
              Expanded(
                child: Text(
                  "Sansa Indira",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16 * h,
                    fontFamily: AppColor.fontNunitoSans,
                    height: 25 / 16 * h,
                    color: AppColor.dark,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 24 * h,
                width: 24 * h,
              ),
              SizedBox(
                width: 19 * w,
              ),
            ],
          ),
          Container(
            height: 1 * h,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: 17 * h,
              left: 20 * w,
              right: 20 * w,
            ),
            color: AppColor.grey.withOpacity(0.2),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20 * h,
              left: 15 * w,
              right: 15 * w,
            ),
            child: Text(
              "My last day for this year holiday! So excited to share my memories with you guys! 😁😍",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14 * h,
                fontFamily: AppColor.fontNunitoSans,
                height: 24 / 14 * h,
                color: AppColor.dark.withOpacity(0.8),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20 * h,
              left: 15 * w,
              right: 15 * w,
            ),
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/img1.png",
                height: 170 * h,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 15 * w,
              top: 20 * h,
              right: 15 * w,
              bottom: 20 * h,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/like.svg",
                  height: 24 * h,
                  width: 24 * h,
                ),
                SizedBox(
                  width: 11 * w,
                ),
                Text(
                  "1.892",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14 * h,
                    fontFamily: AppColor.fontNunitoSans,
                    height: 24 / 14 * h,
                    color: AppColor.dark.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  width: 23 * w,
                ),
                SvgPicture.asset(
                  "assets/icons/comment.svg",
                  height: 24 * h,
                  width: 24 * h,
                ),
                SizedBox(
                  width: 10 * w,
                ),
                Expanded(
                  child: Text(
                    "72",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14 * h,
                      fontFamily: AppColor.fontNunitoSans,
                      height: 24 / 14 * h,
                      color: AppColor.dark.withOpacity(0.8),
                    ),
                  ),
                ),
                Text(
                  "2 Hours ago",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13 * h,
                    fontFamily: AppColor.fontNunitoSans,
                    height: 24 / 13 * h,
                    color: AppColor.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
