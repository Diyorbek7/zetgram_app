import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zetgram_app/src/ui/auth/register_screen.dart';
import 'package:zetgram_app/src/utils/app_color/app_color.dart';
import 'package:zetgram_app/src/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool isHiddenPassword = true;

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
              Container(
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
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20 * h,
                        fontFamily: AppColor.fontNunitoSans,
                        height: 33 / 20 * h,
                        color: AppColor.dark,
                      ),
                    ),
                    Container(
                      height: 6 * h,
                      width: 6 * h,
                      margin: EdgeInsets.only(
                        top: 4 * h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: AppColor.blue,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: const RegisterScreen(),
                    ),
                  );
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
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20 * h,
                          fontFamily: AppColor.fontNunitoSans,
                          height: 27 / 20 * h,
                          color: AppColor.grey,
                        ),
                      ),
                      Container(
                        height: 6 * h,
                        width: 6 * h,
                        margin: EdgeInsets.only(
                          top: 4 * h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
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
                    controller: _controllerEmail,
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
                          obscureText: !isHiddenPassword,
                          controller: _controllerPassword,
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
                            child: isHiddenPassword
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
                      Container(
                        width: 94 * w,
                        height: 1 * h,
                        color: AppColor.grey.withOpacity(0.6),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 20 * w,
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
                      ),
                      Container(
                        width: 94 * w,
                        height: 1 * h,
                        color: AppColor.grey,
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
          ),
        ],
      ),
    );
  }

  void _togglePassword() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
