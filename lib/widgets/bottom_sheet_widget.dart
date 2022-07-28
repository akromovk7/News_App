import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/components/text_styles.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/constants/icon_const.dart';
import 'package:news_app/widgets/outlined_button_widget.dart';
import 'package:news_app/widgets/save_button_widget.dart';

Future<dynamic> myBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 352.h,
        decoration: BoxDecoration(
          color: ConsColors.kWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14.r),
            topRight: Radius.circular(14.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Filter", style: FontStyles.filter),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: Size(101.8.w, 32.h),
                          textStyle: FontStyles.reset,
                          primary: ConsColors.kWhite,
                          onPrimary: ConsColors.kFilter,
                          side: const BorderSide(color: ConsColors.kFilter),
                          shape: StadiumBorder()),
                      onPressed: () {},
                      icon: ConsIcons.reset,
                      label: Text("Reset", style: FontStyles.reset),
                    ),
                  ],
                ),
              ),
              Text("Sort by", style: FontStyles.sortBy),
              Row(
                children: [
                  const MyOutlinedButton(text: "Recommended"),
                  SizedBox(width: 8.w),
                  const MyOutlinedButton(text: "Latest"),
                  SizedBox(width: 8.w),
                  const MyOutlinedButton(text: "Most Viewed"),
                ],
              ),
              // Row(
              //   children: [
              //     const MyOutlinedButton(text: "Channel"),
              //     SizedBox(width: 8.w),
              //     const MyOutlinedButton(text: "Following"),
              //   ],
              // ),
              const SaveButton()
            ],
          ),
        ),
      );
    },
  );
}
