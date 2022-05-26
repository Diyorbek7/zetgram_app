import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.blue,
        child: SvgPicture.asset(
          "assets/icons/plus.svg",
          height: 28 * h,
          width: 28 * h,
          color: AppColor.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColor.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                height: 28 * h,
                width: 28 * h,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/send.svg",
                height: 28 * h,
                width: 28 * h,
              ),
              onPressed: () {},
            ),
            SizedBox(width: 56*w,),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/message.svg",
                height: 28 * h,
                width: 28 * h,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/user.svg",
                height: 28 * h,
                width: 28 * h,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
