import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/ui/auth/login_screen.dart';
import 'package:zetgram_app/src/ui/auth/register_screen.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  PageController controller = PageController();

  bool isHiddenPasswordRegister = true;
  bool isHiddenPasswordLogin = true;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppColor.lightWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 64 * h,
              width: 64 * h,
              margin: EdgeInsets.only(
                top: 68 * h,
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
          SizedBox(
            height: 40 * h,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (_currentIndex != 0) {
                    controller.previousPage(
                      duration: const Duration(milliseconds: 370),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 16 * w,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12 * w,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Log In",
                        style: _currentIndex != 1
                            ? TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20 * h,
                                fontFamily: AppColor.fontNunitoSans,
                                height: 33 / 20 * h,
                                color: AppColor.dark,
                              )
                            : TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20 * h,
                                fontFamily: AppColor.fontNunitoSans,
                                height: 27 / 20 * h,
                                color: AppColor.grey,
                              ),
                      ),
                      _currentIndex != 1
                          ? Container(
                              height: 6 * h,
                              width: 6 * h,
                              margin: EdgeInsets.only(
                                top: 4 * h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: AppColor.blue,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_currentIndex != 1) {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 370),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 22 * w,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12 * w,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Sign Up",
                        style: _currentIndex != 0
                            ? TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20 * h,
                                fontFamily: AppColor.fontNunitoSans,
                                height: 33 / 20 * h,
                                color: AppColor.dark,
                              )
                            : TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20 * h,
                                fontFamily: AppColor.fontNunitoSans,
                                height: 27 / 20 * h,
                                color: AppColor.grey,
                              ),
                      ),
                      _currentIndex != 0
                          ? Container(
                              height: 6 * h,
                              width: 6 * h,
                              margin: EdgeInsets.only(
                                top: 4 * h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: AppColor.blue,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (_index) {
                setState(() {
                  _currentIndex = _index;
                });
              },
              scrollDirection: Axis.horizontal,
              children: const [
                LoginScreen(),
                RegisterScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
