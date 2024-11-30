import 'package:flutter/material.dart';
import 'package:sizing/sizing.dart';

class AppColors {
  static Color PRIMARY = HexColor("#00FF00");
  static Color BACK_BTN_PRIMARY = HexColor("#00A100");
  static Color PRIMARY1 = HexColor("#00A100");
  static Color WHITE = Colors.white;
  static Color BLACK = Colors.black;
  static Color RED = Colors.red;
  static Color GREY = Colors.grey;
  static Color GREEN = Colors.green;
  static Color FAIL = Colors.red;
}

class FontColors {
  static Color WHITE = Colors.white;
  static Color BLACK = Colors.black;
  static Color RED = Colors.red;
  static Color GREY = const Color.fromARGB(255, 122, 122, 122);
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class STR_COMMON {
  static var APP_NAME = 'MonkMaz';
  static var FRIENDS = 'Friends';
  static var RASHID_BATHHI = "Rashid Batthi";
  static var D_STR = "6d";
  static var MUTUAL_FND = "21 mutual friends";
  static var CONFIRM = "Confirm";
  static var DELETE = "Delete";
  static var FRN_REQUEST = "Friend requests ";
  static var LIST_COUNT = "221";
}

class ImgName {
  static var FRIENDS_REQUEST_IMG = "assets/images/friend_request.png";
  static var MY_FRIENDS_IMG = "assets/images/my_friends.png";
  static var SEND_REQUEST_IMG = "assets/images/send_request.png";
  static var MUTUAL_FND_IMG = "assets/images/mutual_fnd.png";
  static var PROFILE_IMG = "assets/images/profile.png";
}

const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceRegular = SizedBox(width: 18.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);

const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceRegular = SizedBox(height: 20.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);

class FontSize {
  static var FONT_SIZE_10 = 10.ss;
  static var FONT_SIZE_12 = 12.ss;
  static var FONT_SIZE_14 = 14.ss;
  static var FONT_SIZE_15 = 15.ss;
  static var FONT_SIZE_16 = 16.ss;
  static var FONT_SIZE_18 = 18.ss;
  static var FONT_SIZE_20 = 20.ss;
  static var FONT_SIZE_22 = 22.ss;
  static var FONT_SIZE_24 = 24.ss;
  static var FONT_SIZE_25 = 25.ss;
  static var FONT_SIZE_28 = 28.ss;
  static var FONT_SIZE_30 = 30.ss;
}

BoxDecoration get boxDecoratioAppBTN {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: const [0.35, 1],
      colors: [AppColors.PRIMARY1, AppColors.BACK_BTN_PRIMARY],
    ),
  );
}
