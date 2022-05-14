import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _controllerEmailLogin = TextEditingController();
  final TextEditingController _controllerEmailRegister =
      TextEditingController();
  final TextEditingController _controllerPasswordLogin =
      TextEditingController();
  final TextEditingController _controllerPasswordRegister =
      TextEditingController();
  final TextEditingController _controllerUsername = TextEditingController();

  PageController controller = PageController();

  bool isHiddenPasswordRegister = true;
  bool isHiddenPasswordLogin = true;

  int _currentIndex = 0;

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
              children: [
                ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25 * w,
                  ),
                  children: [
                    SizedBox(
                      height: 41 * h,
                    ),
                    Text(
                      "Username or Email",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 27 / 16 * h,
                        color: AppColor.mediumDark,
                      ),
                    ),
                    Container(
                      width: width,
                      margin: EdgeInsets.only(
                        top: 15 * h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20 * w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        color: AppColor.white,
                      ),
                      child: TextField(
                        controller: _controllerEmailLogin,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your username or email",
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
                    SizedBox(
                      height: 35 * h,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 27 / 16 * h,
                        color: AppColor.mediumDark,
                      ),
                    ),
                    Container(
                      width: width,
                      margin: EdgeInsets.only(
                        top: 15 * h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20 * w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        color: AppColor.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              obscureText: !isHiddenPasswordLogin,
                              controller: _controllerPasswordLogin,
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
                          GestureDetector(
                            onTap: _togglePassword,
                            child: Container(
                              height: 28 * h,
                              width: 28 * h,
                              margin: EdgeInsets.only(
                                left: 6 * w,
                              ),
                              child: Center(
                                child: isHiddenPasswordLogin
                                    ? SvgPicture.asset(
                                        "assets/icons/eye-off.svg",
                                        height: 24 * h,
                                        width: 24 * h,
                                      )
                                    : SvgPicture.asset(
                                        "assets/icons/eye.svg",
                                        height: 24 * h,
                                        width: 24 * h,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25 * h,
                    ),
                    Row(
                      children: [
                        const Expanded(child: Text("")),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14 * h,
                            fontFamily: AppColor.fontNunitoSans,
                            height: 25 / 14 * h,
                            color: AppColor.dark.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 57 * h,
                      margin: EdgeInsets.only(
                        top: 30 * h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28.5),
                        color: AppColor.blue,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              6,
                            ),
                            blurRadius: 75,
                            color: const Color(0xFF645757).withOpacity(0.05),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Login",
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
                    Container(
                      margin: EdgeInsets.only(
                        top: 33 * h,
                        left: 8 * w,
                        right: 8 * w,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1 * h,
                              color: AppColor.grey.withOpacity(0.6),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 20 * w,
                              right: 20 * w,
                            ),
                            child: Text(
                              "Or login with",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14 * h,
                                fontFamily: AppColor.fontNunitoSans,
                                height: 25 / 14 * h,
                                color: AppColor.dark.withOpacity(0.8),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1 * h,
                              color: AppColor.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 57 * h,
                      margin: EdgeInsets.only(
                        top: 20 * h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28.5),
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              6,
                            ),
                            blurRadius: 75,
                            color: const Color(0xFF645757).withOpacity(0.15),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            const Spacer(),
                            Image.asset(
                              "assets/images/google.png",
                              height: 22 * h,
                              width: 22 * h,
                            ),
                            SizedBox(
                              width: 15 * w,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18 * h,
                                fontFamily: AppColor.fontNunitoSans,
                                height: 25 / 18 * h,
                                color: AppColor.dark,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25 * w,
                  ),
                  children: [
                    SizedBox(
                      height: 41 * h,
                    ),
                    Text(
                      "Username",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 27 / 16 * h,
                        color: AppColor.mediumDark,
                      ),
                    ),
                    Container(
                      width: width,
                      margin: EdgeInsets.only(
                        top: 15 * h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20 * w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        color: AppColor.white,
                      ),
                      child: TextField(
                        controller: _controllerUsername,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Create your username",
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
                    SizedBox(
                      height: 35 * h,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 27 / 16 * h,
                        color: AppColor.mediumDark,
                      ),
                    ),
                    Container(
                      width: width,
                      margin: EdgeInsets.only(
                        top: 15 * h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20 * w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        color: AppColor.white,
                      ),
                      child: TextField(
                        controller: _controllerEmailRegister,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your email",
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
                    SizedBox(
                      height: 35 * h,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 27 / 16 * h,
                        color: AppColor.mediumDark,
                      ),
                    ),
                    Container(
                      width: width,
                      margin: EdgeInsets.only(
                        top: 15 * h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20 * w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.5),
                        color: AppColor.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              obscureText: !isHiddenPasswordRegister,
                              controller: _controllerPasswordRegister,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Create your password",
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
                          GestureDetector(
                            onTap: _togglePasswordRegister,
                            child: Container(
                              height: 28 * h,
                              width: 28 * h,
                              margin: EdgeInsets.only(
                                left: 6 * w,
                              ),
                              child: Center(
                                child: isHiddenPasswordRegister
                                    ? SvgPicture.asset(
                                        "assets/icons/eye-off.svg",
                                        height: 24 * h,
                                        width: 24 * h,
                                      )
                                    : SvgPicture.asset(
                                        "assets/icons/eye.svg",
                                        height: 24 * h,
                                        width: 24 * h,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 57 * h,
                      margin: EdgeInsets.only(
                        top: 50 * h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28.5),
                        color: AppColor.blue,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              0,
                              6,
                            ),
                            blurRadius: 75,
                            color: const Color(0xFF645757).withOpacity(0.05),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _togglePassword() {
    setState(() {
      isHiddenPasswordLogin = !isHiddenPasswordLogin;
    });
  }

  void _togglePasswordRegister() {
    setState(() {
      isHiddenPasswordRegister = !isHiddenPasswordRegister;
    });
  }
}
