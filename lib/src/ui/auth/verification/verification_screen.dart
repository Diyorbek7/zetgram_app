import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController _controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.lightWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 79 * h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25 * w,
              ),
              SvgPicture.asset(
                "assets/icons/back.svg",
                height: 28 * h,
                width: 28 * h,
              ),
              SizedBox(
                width: 20 * w,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18 * h,
                  fontFamily: AppColor.fontNunitoSans,
                  height: 25 / 18 * h,
                  color: AppColor.dark,
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 64 * h,
              width: 64 * h,
              margin: EdgeInsets.only(
                top: 50 * h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.blue,
              ),
              child: Center(
                child: SvgPicture.asset(
                  "assets/icons/zetgram.svg",
                  height: 32 * h,
                  width: 32 * h,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 50 * h,
                    left: 25 * w,
                    right: 25 * w,
                  ),
                  child: Text(
                    "Enter your email for the verification proccess, and we will send 4 digits code to your email for the verification.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * h,
                      fontFamily: AppColor.fontNunitoSans,
                      height: 26 / 16 * h,
                      color: const Color(0xFF616161),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 52 * h,
                    left: 25 * w,
                  ),
                  child: Text(
                    "E-mail",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16 * h,
                      fontFamily: AppColor.fontNunitoSans,
                      height: 27 / 16 * h,
                      color: const Color(0xFF3E3E3E),
                    ),
                  ),
                ),
                Container(
                  width: width,
                  margin: EdgeInsets.only(
                    top: 15 * h,
                    left: 25 * w,
                    right: 25 * w,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20 * w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27.5),
                    color: AppColor.white,
                  ),
                  child: TextField(
                    controller: _controllerEmail,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 25 / 14 * h,
                        color: AppColor.grey.withOpacity(0.8),
                      ),
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16 * h,
                      fontFamily: AppColor.fontNunitoSans,
                      height: 25 / 16 * h,
                      color: AppColor.dark,
                    ),
                  ),
                ),
                Container(
                  height: 57 * h,
                  width: width,
                  margin: EdgeInsets.only(
                    top: 45 * h,
                    left: 25 * w,
                    right: 25 * w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.5),
                    color: AppColor.blue,
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 25 / 18 * h,
                        color: AppColor.white,
                      ),
                    ),
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
