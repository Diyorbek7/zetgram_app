import 'package:flutter/material.dart';

class Utils {
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height / 812;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width / 375;
  }

  static String numberFormat(int k) {
    if (k > 9) {
      return k.toString();
    } else {
      return "0" + k.toString();
    }
  }

  static String getDateFormat(DateTime dateTime) {
    return numberFormat(dateTime.day) +
        "." +
        numberFormat(dateTime.month) +
        "." +
        dateTime.year.toString() +
        " - " +
        numberFormat(dateTime.hour) +
        ":" +
        numberFormat(dateTime.minute);
  }

}