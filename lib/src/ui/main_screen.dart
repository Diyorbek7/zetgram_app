import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/ui/menyu/home/home_screen.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: [
        const HomeScreen(),
      ][_selectedIndex],
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          // setState(() {
          //   _selectedIndex = 2;
          // });
        },
        backgroundColor: AppColor.blue,
        child: SvgPicture.asset(
          "assets/icons/plus.svg",
          height: 28 * h,
          width: 28 * h,
          color: AppColor.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 70 * h,
        color: Colors.transparent,
        child: BottomAppBar(
          color: AppColor.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/home.svg",
                      height: 28 * h,
                      width: 28 * h,
                      color:
                          _selectedIndex == 0 ? AppColor.dark : AppColor.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  Container(
                    height: 6 * h,
                    width: 6 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color:
                          _selectedIndex == 0 ? AppColor.blue : AppColor.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/send.svg",
                      height: 28 * h,
                      width: 28 * h,
                      color:
                          _selectedIndex == 1 ? AppColor.dark : AppColor.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  Container(
                    height: 6 * h,
                    width: 6 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color:
                          _selectedIndex == 1 ? AppColor.blue : AppColor.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 56 * w,
              ),
              Column(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/message.svg",
                      height: 28 * h,
                      width: 28 * h,
                      color:
                          _selectedIndex == 2 ? AppColor.dark : AppColor.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                  Container(
                    height: 6 * h,
                    width: 6 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color:
                          _selectedIndex == 2 ? AppColor.blue : AppColor.white,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/icons/user.svg",
                      height: 28 * h,
                      width: 28 * h,
                      color:
                          _selectedIndex == 3 ? AppColor.dark : AppColor.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                  ),
                  Container(
                    height: 6 * h,
                    width: 6 * h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color:
                          _selectedIndex == 3 ? AppColor.blue : AppColor.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
