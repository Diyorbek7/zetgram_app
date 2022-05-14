import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class CodeVerificationScreen extends StatefulWidget {
  const CodeVerificationScreen({Key? key}) : super(key: key);

  @override
  _CodeVerificationScreenState createState() => _CodeVerificationScreenState();
}

class _CodeVerificationScreenState extends State<CodeVerificationScreen> {
  final TextEditingController _controllerCode = TextEditingController();

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
                "Code Verification",
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
                    "Enter the 4 digits code that you received on your email so you can continue to reset your account password.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16 * h,
                      fontFamily: AppColor.fontNunitoSans,
                      height: 26 / 16 * h,
                      color: const Color(0xFF616161),
                    ),
                  ),
                ),
                SizedBox(
                  height: 52 * h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 41 * w,
                  ),
                  child: Pinput(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    controller: _controllerCode,
                    defaultPinTheme: PinTheme(
                      height: 61 * h,
                      width: 50 * w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white,
                        border: Border.all(
                          color: AppColor.grey.withOpacity(0.6),
                        ),
                      ),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 33 / 24 * h,
                        color: AppColor.dark,
                      ),
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
