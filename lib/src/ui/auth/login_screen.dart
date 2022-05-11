import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.lightWhite,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: AppColor.lightWhite,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 64 * h,
            width: 64 * h,
            margin: EdgeInsets.only(
              top: 24 * h,
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
          Expanded(
            child: ListView(),
          ),
        ],
      ),
    );
  }
}
