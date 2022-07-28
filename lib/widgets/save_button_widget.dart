import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/components/text_styles.dart';
import 'package:news_app/core/constants/color_const.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {debugPrint("Hello");},
      child: Container(
        width: 345.w,
        height: 48.h,
        decoration:  BoxDecoration(
          gradient: const LinearGradient(
              colors: [ConsColors.kPrimaryColor, ConsColors.kGradientColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(24.r),
              
        ),
        child: Center(child: Text("Save",style: FontStyles.saveButton)),
      ),
    );
  }
}
