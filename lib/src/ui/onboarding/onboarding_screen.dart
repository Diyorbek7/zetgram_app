import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zetgram_app/src/model/onboarding/onboarding_model.dart';
import 'package:zetgram_app/src/ui/auth/login_screen.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  final Duration _duration = const Duration(milliseconds: 450);
  List<OnboardingModel> data = [
    OnboardingModel(
      image: "assets/images/img.png",
      text: "We Connect People",
      message:
          "Connecting people trough one platform to share the memories together.",
    ),
    OnboardingModel(
      image: "assets/images/img1.png",
      text: "Sharing Happiness",
      message: "Sharing happiness by sharing your memories in Zelio platform.",
    ),
    OnboardingModel(
      image: "assets/images/img2.png",
      text: "Last Long Memories",
      message:
          "You can store memories of your photos in Zelio app without limit.",
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.lightWhite,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: data.length,
              onPageChanged: (_index) {
                setState(() {
                  _currentIndex = _index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      data[index].image,
                      height: 438 * h,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 50 * h,
                        left: 16 * w,
                        right: 16 * w,
                      ),
                      child: Text(
                        data[index].text,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24 * h,
                          fontFamily: AppColor.fontNunitoSans,
                          height: 33 / 24 * h,
                          color: AppColor.dark,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 18 * h,
                        left: 25 * w,
                        right: 25 * w,
                      ),
                      child: Text(
                        data[index].message,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16 * h,
                          fontFamily: AppColor.fontNunitoSans,
                          height: 26 / 16 * h,
                          color: AppColor.dark.withOpacity(0.8),
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                height: 9 * h,
                width: _currentIndex == 0 ? 28 * h : 9 * h,
                duration: _duration,
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: _currentIndex == 0
                      ? AppColor.blue
                      : AppColor.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 15 * w),
              AnimatedContainer(
                height: 9 * h,
                width: _currentIndex == 1 ? 28 * h : 9 * h,
                duration: _duration,
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: _currentIndex == 1
                      ? AppColor.blue
                      : AppColor.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 15 * w),
              AnimatedContainer(
                height: 9 * h,
                width: _currentIndex == 2 ? 28 * h : 9 * h,
                duration: _duration,
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: _currentIndex == 2
                      ? AppColor.blue
                      : AppColor.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              if (_currentIndex != 2) {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 370),
                  curve: Curves.easeInOut,
                );
              } else {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: const AuthScreen(),
                  ),
                );
              }
            },
            child: Container(
              height: 57 * h,
              width: width,
              margin: EdgeInsets.only(
                top: 33 * h,
                left: 25 * w,
                right: 25 * w,
                bottom: 60 * h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.5),
                color: AppColor.blue,
              ),
              child: Center(
                child: Text(
                  _currentIndex == 2 ? "Get Started" : "Next",
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
          ),
        ],
      ),
    );
  }
}
