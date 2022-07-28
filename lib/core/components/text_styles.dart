import 'package:flutter/cupertino.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/constants/font_sizes.dart';

class FontStyles {
  static TextStyle search = TextStyle(color: ConsColors.kGreyText,fontSize: FontConst.kMinSmallFont,fontWeight: FontWeight.w600,letterSpacing: 1,fontFamily: "Nunito");
  static TextStyle searchHeader = TextStyle(color: ConsColors.kBlackText,fontSize: FontConst.kVerySmallFont,fontWeight: FontWeight.w600,letterSpacing: 0.5,fontFamily: "Nunito");
  static TextStyle searchHeader2 = TextStyle(color: ConsColors.kBlack,fontSize: FontConst.kMinSmallFont,fontWeight: FontWeight.bold,letterSpacing: 0.5,fontFamily: "NunitoBold");
  static TextStyle sortBy = TextStyle(color: ConsColors.kFilter,fontSize: FontConst.kMinSmallFont,fontWeight: FontWeight.w600,letterSpacing: 1,fontFamily: "Nunito");
  static TextStyle filter = TextStyle(color: ConsColors.kFilter,fontSize: FontConst.kMinMediumFont,fontWeight: FontWeight.bold,letterSpacing: 1,fontFamily: "NunitoBold");
  static TextStyle reset = TextStyle(color: ConsColors.kFilter,fontSize: FontConst.kVerySmallFont,fontWeight: FontWeight.w600,letterSpacing: 1,fontFamily: "Nunito");
  static TextStyle header = TextStyle(color: ConsColors.kBlack,fontSize: FontConst.kMaxSmallFont,fontWeight: FontWeight.w700,letterSpacing: 1,fontFamily: "NewYork");
  static TextStyle textButton = TextStyle(color: ConsColors.kSecondaryColor,fontSize: FontConst.kMinSmallFont,fontFamily: "Nunito");
  static TextStyle saveButton = TextStyle(color: ConsColors.kWhite,fontSize: FontConst.kSmallFont,fontWeight: FontWeight.w800,fontFamily: "NunitoBold");
}